import { join, basename, dirname, relative } from "path";
import { cpSync, existsSync, readdirSync } from "fs";

import convertTexture from "./utils/itx-to-png.js";
import decryptDataFile from "./utils/dat-to-csv.js";
import extractJar from "./utils/extract-jar.js";
import convertDumpToSql from "./utils/dump-to-sql.js";
import convertSqlToCsvs from "./utils/sql-to-csv.js";
import scanLuaFiles from "./utils/scan-lua-files.js";
import findFiles from "./utils/find-files.js";
import ensureDirSync from "./utils/ensure-dir-sync.js";
import unpackAtlas from "./utils/unpack-atlas.js";

import createInput from "./input.js";
import createIntermediate from "./intermediate.js";
import createOutput from "./output.js";

import convertEffects from "./converters/effects.js";
import convertGfx from "./converters/gfx.js";
import convertItems from "./converters/items.js";
import convertMonsters from "./converters/monsters.js";
import convertNpcs from "./converters/npcs.js";
import convertQuests from "./converters/quests.js";
import convertRaces from "./converters/races.js";
import convertScheduledScripts from "./converters/scheduled_scripts.js";
import convertSkillGroups from "./converters/skill_groups.js";
import convertSkills from "./converters/skills.js";
import convertSounds from "./converters/sounds.js";
import convertMonsterSpawns from "./converters/monster_spawns.js";
import convertStarterPacks from "./converters/starter_packs.js";
import convertTiles from "./converters/tiles.js";
import convertTransitions from "./converters/transitions.js";
import convertTriggerFields from "./converters/triggerfields.js";

async function run(basePath) {
  const input = createInput(basePath);
  const intermediate = createIntermediate(basePath);
  const output = createOutput(basePath);
  const config = {
    legacyTransitions: basePath.includes("gobaith"),
    legacyDirections: basePath.includes("gobaith")
  }
  const context = { input, intermediate, output, config };

  const jarFiles = findFiles(input.client.rootDir, ".jar");
  const unpackedJarDirs = [];
  if (jarFiles.length > 0) {
    console.log(`Unpacking ${jarFiles.length} .jar files...`);
    for (const jar of jarFiles) {
      let jarBaseName = basename(jar, ".jar").replaceAll(/-\d\.\d\.\d+$/g, "");
      const unpackedJarDir = join(
        intermediate.client.unpackedJarsDir,
        jarBaseName
      );
      await extractJar(jar, unpackedJarDir);
      unpackedJarDirs.push(unpackedJarDir);
    }
  }

  for (const unpackedJarDir of unpackedJarDirs) {
    const datFiles = findFiles(unpackedJarDir, ".dat");
    if (datFiles.length > 0) {
      console.log(
        `${basename(unpackedJarDir, ".jar")}: Converting ${
          datFiles.length
        } .dat files to .csv...`
      );
      for (const datFile of datFiles) {
        decryptDataFile(
          datFile,
          intermediate.client.csvDir,
          input.client.publicKeyFile
        );
      }
    }

    const itxFiles = findFiles(unpackedJarDir, ".itx");
    if (itxFiles.length > 0) {
      console.log(
        `${basename(unpackedJarDir, ".jar")}: Converting ${
          itxFiles.length
        } .itx files to .png...`
      );
      for (const itxFile of itxFiles) {
        const outputDir = join(
          output.assetBundle.texturesDir,
          basename(unpackedJarDir, ".jar")
        );
        ensureDirSync(outputDir);
        convertTexture(itxFile, outputDir);
      }
    }

    const xmlFiles = findFiles(unpackedJarDir, ".xml");
    const atlasFiles = xmlFiles.filter((f) => f.endsWith("-atlas.xml"));
    if (atlasFiles.length > 0) {
      console.log(
        `${basename(unpackedJarDir, ".jar")}: Unpacking ${
          atlasFiles.length
        } texture atlases...`
      );
      for (const atlasFile of atlasFiles) {
        const written = unpackAtlas(atlasFile) || [];
        const atlasDir = dirname(atlasFile);
        for (const src of written) {
          const rel = relative(atlasDir, src);
          const dest = join(output.assetBundle.texturesDir, rel);
          ensureDirSync(dirname(dest));
          cpSync(src, dest);
        }
      }
    }
  }

  const dumpFiles = findFiles(input.server.databaseDir, ".dump");
  if (dumpFiles.length > 0) {
    console.log(`Converting ${dumpFiles.length} .dump files to .sql...`);
    for (const dumpFile of dumpFiles) {
      await convertDumpToSql(dumpFile, intermediate.server.sqlDir);
    }
  }

  const sqlFiles = findFiles(intermediate.server.sqlDir, ".sql");
  if (sqlFiles.length > 0) {
    console.log(`Converting ${sqlFiles.length} .sql files to .csv...`);
    for (const sqlFile of sqlFiles) {
      convertSqlToCsvs(sqlFile, intermediate.server.csvDir);
    }
  }

  convertEffects(context);
  convertGfx(context);
  convertItems(context);
  convertMonsters(context);
  convertNpcs(context);
  convertQuests(context);
  convertRaces(context);
  convertScheduledScripts(context);
  convertSkillGroups(context);
  convertSkills(context);
  convertSounds(context);
  convertMonsterSpawns(context);
  convertStarterPacks(context);
  convertTiles(context);
  convertTransitions(context);
  convertTriggerFields(context);

  console.log(`Copying audio files to assets bundle...`);
  const audioPaths = [
    {
      source: join(
        intermediate.client.unpackedJarsDir,
        "rsc_sound",
        "data",
        "sounds"
      ),
      target: output.assetBundle.soundsDir,
    },
    {
      source: join(intermediate.client.unpackedJarsDir, "rsc_sounds", "sounds"),
      target: output.assetBundle.soundsDir,
    },
    {
      source: join(intermediate.client.unpackedJarsDir, "rsc_music", "music"),
      target: output.assetBundle.musicDir,
    },
  ];
  for (const { source, target } of audioPaths) {
    if (existsSync(source)) {
      cpSync(source, target, { recursive: true });
    }
  }

  console.log(`Copying lua files to script bundle...`);
  cpSync(input.server.scriptsDir, output.scriptBundle.luaDir, {
    recursive: true,
  });

  // Copy any extra files into the bundles
  const extraDir = join(basePath, "extra");
  const bundlesDir = join(basePath, "bundles");
  if (existsSync(extraDir)) {
    console.log("Copying extra files into bundles...");
    const entries = readdirSync(extraDir, { withFileTypes: true });
    for (const entry of entries) {
      const srcPath = join(extraDir, entry.name);
      const destPath = join(bundlesDir, entry.name);
      if (entry.isDirectory()) {
        cpSync(srcPath, destPath, { recursive: true });
      } else if (entry.isFile()) {
        ensureDirSync(dirname(destPath));
        cpSync(srcPath, destPath);
      }
    }
  }

  console.log("Analyzing scripts...");
  const preloads = scanLuaFiles(output.scriptBundle.luaDir);

  console.log("Writing script bundle.json...");
  output.bundle(output.scriptBundle.rootDir, {
    name: `illarion-${output.variant}`,
    description: "Lua scripts for Illarion as a Selene bundle.",
    dependencies: ["illarion-api"],
    preloads
  });

  console.log("Writing asset bundle.json...");
  output.bundle(output.assetBundle.rootDir, {
    name: `illarion-${output.variant}-assets`,
    description: "Client assets for Illarion as a Selene bundle.",
  });

  console.log("Writing data bundle.json...");
  output.bundle(output.dataBundle.rootDir, {
    name: `illarion-${output.variant}-data`,
    description: "Data definitions for Illarion as a Selene bundle.",
  });

  console.log("Done.");
}

if (process.argv.length < 3) {
  console.log("Usage: node . <basePath>");
  process.exit(1);
}

const basePath = process.argv[2];
run(basePath);

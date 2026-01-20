import { join, basename, dirname, relative } from "path";
import { existsSync, mkdirSync, writeFileSync, readFileSync } from "fs";
import { loadMappings, applyMappingsDeep, applyMappingsToString } from "./utils/apply-mappings.js";

export default function create(basePath) {
  const variant = basename(basePath);
  const bundlesDir = join(basePath, "bundles");
  const assetBundleDir = join(bundlesDir, `illarion-${variant}-assets`);
  const texturesDir = join(assetBundleDir, "client", "textures", "illarion");
  const soundsDir = join(assetBundleDir, "client", "sounds", "illarion");
  const musicDir = join(assetBundleDir, "client", "music", "illarion");
  const dataBundleDir = join(bundlesDir, `illarion-${variant}-data`);
  const scriptBundleDir = join(bundlesDir, `illarion-${variant}`);
  const luaDir = join(scriptBundleDir, "server", "lua");
  const mappings = loadMappings(basePath);

  function deepMerge(target, patch) {
    if (patch === undefined || patch === null) return target;
    if (target === undefined || target === null) return patch;
    if (Array.isArray(target) && Array.isArray(patch)) {
      // Replace arrays by default
      return patch.slice();
    }
    if (typeof target === "object" && typeof patch === "object") {
      const out = { ...target };
      for (const [k, v] of Object.entries(patch)) {
        out[k] = deepMerge(out[k], v);
      }
      return out;
    }
    // Primitive overwrite
    return patch;
  }

  function findPatchForFile(filePath) {
    // Determine which bundle root this file belongs to and map to patches/<bundle-name>/...
    const bundleRoots = [assetBundleDir, dataBundleDir, scriptBundleDir];
    for (const root of bundleRoots) {
      if (filePath.startsWith(root)) {
        const relPath = relative(root, filePath);
        const patchRoot = join(basePath, "patches", basename(root));
        const patchFile = join(patchRoot, relPath);
        if (existsSync(patchFile)) {
          try {
            const raw = readFileSync(patchFile, "utf-8");
            const json = JSON.parse(raw);
            return json;
          } catch (e) {
            console.warn(`Failed to read patch file ${patchFile}:`, e.message);
          }
        }
      }
    }
    return null;
  }

  if (!existsSync(bundlesDir)) {
    mkdirSync(bundlesDir);
  }
  if (!existsSync(assetBundleDir)) {
    mkdirSync(assetBundleDir);
  }
  if (!existsSync(dataBundleDir)) {
    mkdirSync(dataBundleDir);
  }
  if (!existsSync(scriptBundleDir)) {
    mkdirSync(scriptBundleDir);
  }
  if (!existsSync(texturesDir)) {
    mkdirSync(texturesDir, { recursive: true });
  }
  if (!existsSync(soundsDir)) {
    mkdirSync(soundsDir, { recursive: true });
  }
  if (!existsSync(musicDir)) {
    mkdirSync(musicDir, { recursive: true });
  }
  if (!existsSync(luaDir)) {
    mkdirSync(luaDir, { recursive: true });
  }
  return {
    variant,
    assetBundle: {
      rootDir: assetBundleDir,
      texturesDir,
      soundsDir,
      musicDir,
      clientData: join(assetBundleDir, "client", "data")
    },
    dataBundle: {
      rootDir: dataBundleDir,
      serverData: join(dataBundleDir, "server", "data"),
      commonData: join(dataBundleDir, "common", "data")
    },
    scriptBundle: {
      rootDir: scriptBundleDir,
      luaDir
    },
    bundle(bundleDir, metadata) {
      const filePath = join(bundleDir, "bundle.json");
      // Delegate mapping and merging to json()
      this.json(filePath, metadata);
    },
    json(filePath, data) {
      const dir = dirname(filePath);
      if (!existsSync(dir)) {
        mkdirSync(dir, { recursive: true });
      }
      const mapped = applyMappingsDeep(data, mappings);
      const patch = findPatchForFile(filePath);
      const merged = patch ? deepMerge(mapped, applyMappingsDeep(patch, mappings)) : mapped;
      writeFileSync(filePath, JSON.stringify(merged, null, 2));
    },
    i18n(key, lang, text) {
      // console.log(key, lang, text)
      // Even though i18n is currently a no-op, keep behavior consistent
      // and apply mappings to any provided text.
      if (typeof text === "string") {
        applyMappingsToString(text, mappings);
      }
    },
    registryEntries(baseDir, entries) {
      // Write each registry entry to an individual file
      // The folder structure determines the registry type
      for (const [key, data] of Object.entries(entries)) {
        const fileName = `${key.replace(/illarion:/g, '')}.json`;
        const filePath = join(baseDir, fileName);
        this.json(filePath, data);
      }
    }
  };
}

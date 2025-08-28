import { join } from "path";
import csvToObjects from "../utils/csv-to-objects.js";
import {
  appearanceMappings,
  directionMappings,
  animationTypes,
} from "../illarion.js";

export default function convert({ intermediate, output, config }) {
  const clientRaces = csvToObjects(
    join(intermediate.client.csvDir, "Chars.csv"),
    {
      id: "appearance",
      columns: {
        name: "fileName",
        frame: "frameCount",
        still: "idleFrame",
        offx: "offsetX",
        offy: "offsetY",
        appearance: "appearance",
        direction: "direction",
        animation: "animation",
        mirror: "mirror"
      },
      groupById: true,
    }
  );

  const raceVisuals = {};
  for (const [appearance, rows] of Object.entries(clientRaces)) {
    const { race, type } = appearanceMappings[appearance] || {
      race: appearance
    };
    const animations = {};

    for (const [directionId, directionName] of Object.entries(
      config.legacyDirections ? directionMappings.legacy : directionMappings.current
    )) {
      const hasAnimations = rows.find((it) => !isNaN(it.animation));
      if (hasAnimations) {
        for (const [animationId, animationName] of Object.entries(
          animationTypes
        )) {
          const row = rows.find(
            (row) =>
              row.direction == directionId && row.animation == animationId
          );
          if (!row) continue;
          const textures = [];
          if (row.frameCount > 1) {
            for (let i = 0; i < row.frameCount; i++) {
              textures.push(
                `client/textures/illarion/chars/${row.fileName}-${i}.png`
              );
            }
          } else {
            textures.push(`client/textures/illarion/chars/${row.fileName}.png`);
          }
          animations[`${animationName}/${directionName}`] = {
            textures,
            speed: 0.1,
            offsetX: row.offsetX,
            offsetY: row.offsetY,
            flipX: row.mirror == 1 ? true : undefined,
          };
        }
      } else {
        const row = rows.find((row) => row.direction == directionId);
        if (!row) continue;
        animations[`stationary/${directionName}`] = {
          textures: [
            `client/textures/illarion/chars/${row.fileName}-${row.idleFrame}.png`,
          ],
          offsetX: row.offsetX,
          offsetY: row.offsetY,
          flipX: row.mirror == 1 ? true : undefined,
        };

        const walkTextures = [];
        for (let i = 0; i < row.frameCount; i++) {
          walkTextures.push(
            `client/textures/illarion/chars/${row.fileName}-${i}.png`
          );
        }
        animations[`walk/${directionName}`] = {
          textures: walkTextures,
          speed: 0.1,
          offsetX: row.offsetX,
          offsetY: row.offsetY,
          flipX: row.mirror == 1 ? true : undefined,
        };
      }
    }
    raceVisuals[`illarion:race_${race}_${type ?? 0}`] = {
      type: "animator",
      animator: "humanoid",
      sortLayerOffset: 301,
      metadata: {
        raceId: Number(race),
        typeId: Number(type ?? 0),
      },
      animations,
    };
  }

  const races = csvToObjects(join(intermediate.server.csvDir, "race.csv"), {
    id: "race_id",
    columns: {
      race_name_de: "nameDe",
      race_name_en: "nameEn",
      race_age_min: "minAge",
      race_age_max: "maxAge",
      race_height_min: "minHeight",
      race_height_max: "maxHeight",
      race_weight_min: "minWeight",
      race_weight_max: "maxWeight",
      race_agility_min: "minAgility",
      race_agility_max: "maxAgility",
      race_strength_min: "minStrength",
      race_strength_max: "maxStrength",
      race_intelligence_min: "minIntelligence",
      race_intelligence_max: "maxIntelligence",
      race_willpower_min: "minWillpower",
      race_willpower_max: "maxWillpower",
      race_constitution_min: "minConstitution",
      race_constitution_max: "maxConstitution",
      race_dexterity_min: "minDexterity",
      race_dexterity_max: "maxDexterity",
      race_essence_min: "minEssence",
      race_essence_max: "maxEssence",
      race_perception_min: "minPerception",
      race_perception_max: "maxPerception",
      race_name: "name",
      race_attribute_points_max: "maxAttributePoints",
    },
  });

  for (const [id, row] of Object.entries(
    csvToObjects(join(intermediate.server.csvDir, "naturalarmor.csv"), {
      id: "nar_race",
      columns: {
        nar_strokearmor: "strokeArmor",
        nar_puncturearmor: "punctureArmor",
        nar_thrustarmor: "thrustArmor",
      },
    })
  )) {
    const race = races[id];
    if (!race) continue;
    race.strokeArmor = row.strokeArmor;
    race.punctureArmor = row.punctureArmor;
    race.thrustArmor = row.thrustArmor;
  }

  for (const [id, rows] of Object.entries(
    csvToObjects(join(intermediate.server.csvDir, "race_types.csv"), {
      id: "rt_race_id",
      columns: {
        rt_type_id: "typeId",
      },
      groupById: true,
    })
  )) {
    const race = races[id];
    if (!race) continue;
    race.types = {};
    rows.forEach((row) => (race.types[row.typeId] = {}));
  }

  for (const [id, rows] of Object.entries(
    csvToObjects(join(intermediate.server.csvDir, "race_skin_colour.csv"), {
      id: "rsc_race_id",
      columns: {
        rsc_type_id: "typeId",
        rsc_red: "red",
        rsc_green: "green",
        rsc_alpha: "alpha",
      },
      groupById: true,
    })
  )) {
    const race = races[id];
    if (!race) continue;
    rows.forEach((row) => {
      const type = race.types[row.typeId];
      if (!type) return;
      type.skinColors = type.skinColors || [];
      delete row.typeId;
      type.skinColors.push(row);
    });
  }

  for (const [id, rows] of Object.entries(
    csvToObjects(join(intermediate.server.csvDir, "race_hair_colour.csv"), {
      id: "rhc_race_id",
      columns: {
        rhc_type_id: "typeId",
        rhc_red: "red",
        rhc_green: "green",
        rhc_alpha: "alpha",
      },
      groupById: true,
    })
  )) {
    const race = races[id];
    if (!race) continue;
    rows.forEach((row) => {
      const type = race.types[row.typeId];
      if (!type) return;
      type.hairColors = type.hairColors || [];
      delete row.typeId;
      type.hairColors.push(row);
    });
  }

  for (const [id, rows] of Object.entries(
    csvToObjects(join(intermediate.server.csvDir, "race_hair.csv"), {
      id: "rh_race_id",
      columns: {
        rh_type_id: "typeId",
        rh_hair_id: "hairId",
        rh_name_de: "nameDe",
        rh_name_en: "nameEn",
      },
      groupById: true,
    })
  )) {
    const race = races[id];
    if (!race) continue;
    rows.forEach((row) => {
      const type = race.types[row.typeId];
      if (!type) return;
      type.hairs = type.hairs || [];
      type.hairs.push({ hairId: row.hairId });
      output.i18n(`illarion:race_${id}_hair_${row.hairId}`, "de", row.nameDe);
      output.i18n(`illarion:race_${id}_hair_${row.hairId}`, "en", row.nameEn);
    });
  }

  for (const [id, rows] of Object.entries(
    csvToObjects(join(intermediate.server.csvDir, "race_beard.csv"), {
      id: "rb_race_id",
      columns: {
        rb_type_id: "typeId",
        rb_beard_id: "beardId",
        rb_name_de: "nameDe",
        rb_name_en: "nameEn",
      },
      groupById: true,
    })
  )) {
    const race = races[id];
    if (!race) continue;
    rows.forEach((row) => {
      const type = race.types[row.typeId];
      if (!type) return;
      type.beards = type.beards || [];
      type.beards.push({ beardId: row.beardId });
      output.i18n(`illarion:race_${id}_beard_${row.beardId}`, "de", row.nameDe);
      output.i18n(`illarion:race_${id}_beard_${row.beardId}`, "en", row.nameEn);
    });
  }

  const entries = {};
  for (const [id, row] of Object.entries(races)) {
    output.i18n(`illarion:race_${id}`, "de", row.nameDe);
    output.i18n(`illarion:race_${id}`, "en", row.nameEn);
    delete row.nameDe;
    delete row.nameEn;

    entries[`illarion:race_${id}`] = {
      ...row,
      metadata: { id: Number(id), name: row.name },
    };
  }

  const entityEntries = {};
  for (const [id, row] of Object.entries(races)) {
    const raceTypes = row.types ? Object.keys(row.types) : [0];
    for (const type of raceTypes) {
      entityEntries[`illarion:race_${id}_${type}`] = {
        tags: ["illarion:character"],
        components: {
          "illarion:visual": {
            type: "visual",
            visual: `illarion:race_${id}_${type}`,
          },
        },
        metadata: { raceId: Number(id), typeId: Number(type) },
      };
    }
  }

  output.json(join(output.dataBundle.commonData, "race.entities.json"), {
    entries: entityEntries,
  });
  output.json(join(output.dataBundle.serverData, "races.json"), {
    entries,
  });
  output.json(join(output.assetBundle.clientData, "race.visuals.json"), {
    entries: raceVisuals,
  });
}

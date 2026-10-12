import { join } from "path";
import csvToObjects from "../utils/csv-to-objects.js";
import { speedToDuration } from "../illarion.js";

export default function convert({ intermediate, output }) {
  const clientItems = csvToObjects(
    join(intermediate.client.csvDir, "Items.csv"),
    {
      id: "id",
      columns: {
        name: "fileName",
        frame: "frameCount",
        mode: "frameMode",
        speed: "animationSpeed",
        offx: "offsetX",
        offy: "offsetY",
        level: "surfaceOffsetY",
      },
    }
  );

  const itemVisuals = {};
  for (const [id, row] of Object.entries(clientItems)) {
    if (row.frameMode == 0) {
      itemVisuals[`illarion:item_${id}`] = {
        type: "simple",
        sortLayerOffset: 300,
        surfaceOffsetY: row.surfaceOffsetY,
        offsetX: row.offsetX,
        offsetY: row.offsetY,
        texture: `client/textures/illarion/items/${row.fileName}.png`,
        metadata: { itemId: Number(id) },
      };
    } else {
      const textures = [];
      if (row.frameCount > 1) {
        for (let idx = 0; idx < row.frameCount; idx++) {
          textures.push(
            `client/textures/illarion/items/${row.fileName}-${idx}.png`
          );
        }
      } else {
        textures.push(`client/textures/illarion/items/${row.fileName}.png`);
      }
      itemVisuals[`illarion:item_${id}`] = {
        type: row.frameMode == 1 ? "animated" : "variants",
        sortLayerOffset: 300,
        surfaceOffsetY: row.surfaceOffsetY,
        offsetX: row.offsetX,
        offsetY: row.offsetY,
        textures,
        ...(row.frameMode == 1
          ? { duration: speedToDuration(row.animationSpeed) * textures.length }
          : {}),
        metadata: { itemId: id },
      };
    }
  }

  const items = csvToObjects(join(intermediate.server.csvDir, "items.csv"), {
    id: "itm_id",
    columns: {
      itm_volume: "volume",
      itm_weight: "weight",
      itm_agingspeed: "agingSpeed",
      itm_objectafterrot: "objectAfterRot",
      itm_script: "script",
      itm_rotsininventory: "rotsInInventory",
      itm_brightness: "brightness",
      itm_worth: "worth",
      itm_buystack: "buyStack",
      itm_maxstack: "maxStack",
      itm_name_german: "nameGerman",
      itm_name_english: "nameEnglish",
      itm_description_german: "descriptionGerman",
      itm_description_english: "descriptionEnglish",
      itm_rareness: "rareness",
      itm_name: "name",
      itm_level: "level",
    },
  });

  for (const [id, row] of Object.entries(
    csvToObjects(join(intermediate.server.csvDir, "container.csv"), {
      id: "con_itemid",
      columns: {
        con_slots: "containerSlots",
      },
    })
  )) {
    items[id].containerSlots = row.containerSlots;
  }

  for (const [id, row] of Object.entries(
    csvToObjects(join(intermediate.server.csvDir, "weapon.csv"), {
      id: "wp_itemid",
      columns: {
        wp_attack: "attack",
        wp_defence: "defense",
        wp_accuracy: "accuracy",
        wp_range: "range",
        wp_weapontype: "weaponType",
        wp_ammunitiontype: "ammunitionType",
        wp_actionpoints: "actionPoints",
        wp_magicdisturbance: "magicDisturbance",
        wp_poison: "poison",
        wp_fightingscript: "fightingScript",
      },
    })
  )) {
    items[id].weapon = row;
  }

  for (const [id, row] of Object.entries(
    csvToObjects(join(intermediate.server.csvDir, "armor.csv"), {
      id: "arm_itemid",
      columns: {
        arm_bodyparts: "bodyParts",
        arm_puncture: "puncture",
        arm_stroke: "stroke",
        arm_thrust: "thrust",
        arm_magicdisturbance: "magicDisturbance",
        arm_absorb: "absorb",
        arm_stiffness: "stiffness",
        arm_type: "type",
      },
    })
  )) {
    items[id].armor = row;
  }

  for (const [id, row] of Object.entries(
    csvToObjects(join(intermediate.server.csvDir, "tilesmodificators.csv"), {
      id: "tim_itemid",
      columns: {
        tim_isnotpassable: "impassable",
        tim_specialitem: "specialItem",
        tim_makepassable: "passableAbove",
      },
    })
  )) {
    items[id].impassable = row.impassable == 1;
    items[id].specialItem = row.specialItem;
    items[id].passableAbove = row.passableAbove == 1;
  }

  const entries = {};
  for (const [id, row] of Object.entries(items)) {
    row.nameGerman = String(row.nameGerman ?? "");
    row.nameEnglish = String(row.nameEnglish ?? "");
    row.descriptionGerman = String(row.descriptionGerman ?? "");
    row.descriptionEnglish = String(row.descriptionEnglish ?? "");
    for (const field of [
      "agingSpeed", "brightness", "buyStack", "level",
      "maxStack", "rareness", "weight", "worth",
    ]) {
      row[field] = Number(row[field] || 0);
    }
    output.i18n(`illarion:item_${id}`, "de", row.nameGerman);
    output.i18n(`illarion:item_${id}.description`, "de", row.descriptionGerman);
    output.i18n(`illarion:item_${id}`, "en", row.nameEnglish);
    output.i18n(`illarion:item_${id}.description`, "en", row.descriptionEnglish);
    entries[`illarion:item_${id}`] = {
      ...row,
      visual: `illarion:items/item_${id}`,
      rotsInInventory: row.rotsInInventory == "t",
      objectAfterRot: row.objectAfterRot
        ? `illarion:item_${row.objectAfterRot}`
        : null,
      metadata: { id: Number(id) },
    };
  }

  output.registryEntries(join(output.dataBundle.serverData, "illarion", "items"), entries);
  output.registryEntries(join(output.assetBundle.clientData, "illarion", "visuals/items"), itemVisuals);
}

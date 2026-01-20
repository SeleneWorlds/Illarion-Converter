import { join } from "path";
import csvToObjects from "../utils/csv-to-objects.js";

export default function convert({ intermediate, output }) {
  const monsters = csvToObjects(
    join(intermediate.server.csvDir, "monster.csv"),
    {
      id: "mob_monsterid",
      columns: {
        mob_name_en: "nameEn",
        mob_name_de: "nameDe",
        mob_race: "race",
        mob_hitpoints: "hitpoints",
        mob_movementtype: "movementType",
        mob_canattack: "canAttack",
        mob_canhealself: "canHealSelf",
        script: "script",
        mob_minsize: "minSize",
        mob_maxsize: "maxSize",
      },
    }
  );

  for (const [id, row] of Object.entries(monsters)) {
    monsters[id].race = `illarion:race_${row.race}`;
  }

  for (const [id, rows] of Object.entries(
    csvToObjects(join(intermediate.server.csvDir, "monster_attributes.csv"), {
      id: "mobattr_monsterid",
      columns: {
        mobattr_name: "attributeName",
        mobattr_min: "min",
        mobattr_max: "max",
      },
      groupById: true,
    })
  )) {
    const attributes =
      monsters[id].attributes || (monsters[id].attributes = {});
    for (const row of rows) {
      const attribute =
        attributes[row.attributeName] || (attributes[row.attributeName] = {});
      attribute.min = row.min;
      attribute.max = row.max;
    }
  }

  for (const [id, rows] of Object.entries(
    csvToObjects(join(intermediate.server.csvDir, "monster_skills.csv"), {
      id: "mobsk_monsterid",
      columns: {
        mobsk_skill_id: "skillId",
        mobsk_minvalue: "min",
        mobsk_maxvalue: "max",
      },
      groupById: true,
    })
  )) {
    const skills = monsters[id].skills || (monsters[id].skills = {});
    for (const row of rows) {
      skills[`illarion:skill_${row.skillId}`] = { min: row.min, max: row.max };
    }
  }

  for (const [id, rows] of Object.entries(
    csvToObjects(join(intermediate.server.csvDir, "monster_items.csv"), {
      id: "mobit_monsterid",
      columns: {
        mobit_position: "bodyPosition",
        mobit_itemid: "itemId",
        mobit_mincount: "minCount",
        mobit_maxcount: "maxCount",
      },
      groupById: true,
    })
  )) {
    const items = monsters[id].items || (monsters[id].items = {});
    for (const row of rows) {
      items[row.bodyPosition] = {
        item: `illarion:item_${row.itemId}`,
        minCount: row.minCount,
        maxCount: row.maxCount,
      };
    }
  }

  const dropsById = {};
  for (const [id, rows] of Object.entries(
    csvToObjects(join(intermediate.server.csvDir, "monster_drop.csv"), {
      id: "md_monsterid",
      columns: {
        md_id: "dropId",
        md_category: "category",
        md_probability: "chance",
        md_itemid: "itemId",
        md_amount_min: "minCount",
        md_amount_max: "maxCount",
        md_quality_min: "minQuality",
        md_quality_max: "maxQuality",
        md_durability_min: "minDurability",
        md_durability_max: "maxDurability",
      },
      groupById: true,
    })
  )) {
    // Group drops by category, and within each category by dropId
    const drops = (monsters[id].drops = monsters[id].drops || {});
    for (const row of rows) {
      dropsById[row.dropId] = row; // keep reference for attaching extra data later
      const category = row.category ?? "default";
      const dropKey = row.dropId;
      delete row.dropId;
      row.item = `illarion:item_${row.itemId}`;
      delete row.itemId;
      delete row.category; // category becomes the key
      const cat = (drops[category] || (drops[category] = {}));
      cat[dropKey] = row;
    }
  }

  for (const [dropId, rows] of Object.entries(
    csvToObjects(join(intermediate.server.csvDir, "monster_drop_data.csv"), {
      id: "mdd_id",
      columns: {
        mdd_key: "key",
        mdd_value: "value",
      },
      groupById: true,
    })
  )) {
    const container = dropsById[dropId];
    if (!container) continue;
    container.data = container.data || {};
    for (const row of rows) {
      container.data[row.key] = row.value;
    }
  }

  const entries = {};
  for (const [id, row] of Object.entries(monsters)) {
    output.i18n(`illarion:monster_${id}`, "de", row.nameDe);
    output.i18n(`illarion:monster_${id}`, "en", row.nameEn);
    delete row.nameDe;
    delete row.nameEn;

    entries[`illarion:monster_${id}`] = {
      ...row,
      canAttack: row.canAttack == "t",
      canHealSelf: row.canHealSelf == "t",
      metadata: { id: Number(id), name: row.name },
    };
  }

  output.registryEntries(join(output.dataBundle.serverData, "illarion", "monsters"), entries);
}

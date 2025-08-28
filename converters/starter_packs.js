import { join } from "path";
import csvToObjects from "../utils/csv-to-objects.js";

export default function convert({ intermediate, output }) {
  const starterPacks = csvToObjects(join(intermediate.server.csvDir, "startpacks.csv"), {
    id: "stp_id",
    columns: {
      stp_german: "nameDe",
      stp_english: "nameEn",
    },
  });

  for (const [id, rows] of Object.entries(csvToObjects(join(intermediate.server.csvDir, "startpack_skills.csv"), {
    id: "sps_id",
    columns: {
        sps_skill_id: "skillId",
        sps_skill_value: "value",
    },
    groupById: true,
  }))) {
    const skills = starterPacks[id].skills || (starterPacks[id].skills = {});
    for (const row of rows) {
      skills[`illarion:skill_${row.skillId}`] = { value: row.value };
    }
  }

  for (const [id, rows] of Object.entries(csvToObjects(join(intermediate.server.csvDir, "startpack_items.csv"), {
    id: "spi_id",
    columns: {
        spi_linenumber: "slot",
        spi_item_id: "itemId",
        spi_number: "count",
        spi_quality: "quality",
    },
    groupById: true,
  }))) {
    const items = starterPacks[id].items || (starterPacks[id].items = {});
    for (const row of rows) {
      items[row.slot] = { itemId: `illarion:item_${row.itemId}`, count: row.count, quality: row.quality };
    }
  }

  const entries = {}
  for (const [id, row] of Object.entries(starterPacks)) {
    output.i18n(`illarion:starter_pack_${id}`, "de", row.nameDe);
    output.i18n(`illarion:starter_pack_${id}`, "en", row.nameEn);
    delete row.nameDe;
    delete row.nameEn;
    entries[`illarion:starter_pack_${id}`] = {
      ...row,
      metadata: { id: Number(id) },
    };
  }

  output.json(join(output.dataBundle.serverData, "starter_packs.json"), { entries })
}
import { join } from "path";
import csvToObjects from "../utils/csv-to-objects.js";

export default function convert({ intermediate, output }) {
  const skillGroups = csvToObjects(join(intermediate.server.csvDir, "skillgroups.csv"), {
    id: "skg_group_id",
    columns: {
      skg_name_german: 'nameDe',
      skg_name_english: 'nameEn',
    },
  });

  for (const [id, row] of Object.entries(skillGroups)) {
    skillGroups[id].metadata = { id: Number(id) };
    output.i18n(`illarion:skill_group_${id}`, 'de', row.nameDe);
    output.i18n(`illarion:skill_group_${id}`, 'en', row.nameEn);
    delete skillGroups[id].nameDe;
    delete skillGroups[id].nameEn;
  }

  const entries = {}
  for (const [id, row] of Object.entries(skillGroups)) {
    entries[`illarion:skill_group_${id}`] = row;
  }

  output.registryEntries(join(output.dataBundle.serverData, "illarion", "skill_groups"), entries);
}

import { join } from "path";
import csvToObjects from "../utils/csv-to-objects.js";

export default function convert({ intermediate, output }) {
  const skills = csvToObjects(join(intermediate.server.csvDir, "skills.csv"), {
    id: "skl_skill_id",
    columns: {
      skl_group_id: 'groupId',
      skl_name: 'name',
      skl_name_german: 'nameDe',
      skl_name_english: 'nameEn'
    },
  });

  for (const [id, row] of Object.entries(skills)) {
    skills[id].metadata = { id: Number(id), name: row.name };
    skills[id].group = `illarion:skill_group_${row.groupId}`;
    delete skills[id].groupId;
    output.i18n(`illarion:skill_${id}`, 'de', row.nameDe);
    output.i18n(`illarion:skill_${id}`, 'en', row.nameEn);
    delete skills[id].nameDe;
    delete skills[id].nameEn;
  }

  const entries = {}
  for (const [id, row] of Object.entries(skills)) {
    entries[`illarion:skill_${id}`] = row;
  }

  output.registryEntries(join(output.dataBundle.serverData, "illarion", "skills"), entries);
}

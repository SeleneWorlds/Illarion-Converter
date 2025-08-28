import { join } from "path";
import csvToObjects from "../utils/csv-to-objects.js";

export default function convert({ intermediate, output }) {
  const quests = csvToObjects(join(intermediate.server.csvDir, "quests.csv"), {
    id: "qst_id",
    columns: {
      qst_script: 'script',
    },
  });

  const entries = {}
  for (const [id, row] of Object.entries(quests)) {
    entries[`illarion:quest_${id}`] = {
      ...row,
      metadata: { id: Number(id) },
    }
  }

  output.json(join(output.dataBundle.serverData, "quests.json"), {
    entries,
  });
}

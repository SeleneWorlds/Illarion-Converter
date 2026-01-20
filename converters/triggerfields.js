import { join } from "path";
import csvToObjects from "../utils/csv-to-objects.js";

export default function convert({ intermediate, output }) {
  const triggerFields = csvToObjects(join(intermediate.server.csvDir, "triggerfields.csv"), {
    id: ["tgf_posx", 'tgf_posy', 'tgf_posz'],
    columns: {
      tgf_posx: 'x',
      tgf_posy: 'y',
      tgf_posz: 'z',
      tgf_script: 'script',
    },
  });

  const entries = {}
  for (const [id, row] of Object.entries(triggerFields)) {
    entries[`illarion:triggerfield_${id}`] = row;
  }

  output.registryEntries(join(output.dataBundle.serverData, "triggerfields"), entries);
}

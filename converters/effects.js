import { join } from "path";
import csvToObjects from "../utils/csv-to-objects.js";

export default function convert({ intermediate, output }) {
  const effects = csvToObjects(
    join(intermediate.server.csvDir, "longtimeeffects.csv"),
    {
      id: "lte_effectid",
      columns: {
        lte_effectname: "name",
        lte_scriptname: "script",
      },
    }
  );

  const entries = {};
  for (const [id, row] of Object.entries(effects)) {
    entries[`illarion:effect_${id}`] = {
      ...row,
      metadata: { id: Number(id), name: row.name },
    };
  }

  output.registryEntries(join(output.dataBundle.serverData, "illarion", "effects"), entries);
}

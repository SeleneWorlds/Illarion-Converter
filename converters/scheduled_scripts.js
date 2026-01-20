import { join } from "path";
import csvToObjects from "../utils/csv-to-objects.js";

export default function convert({ intermediate, output }) {
  const scheduledScripts = csvToObjects(join(intermediate.server.csvDir, "scheduledscripts.csv"), {
    id: ["sc_scriptname", 'sc_functionname'],
    columns: {
      sc_scriptname: 'script',
      sc_functionname: 'function',
      sc_mincycletime: 'minInterval',
      sc_maxcycletime: 'maxInterval',
    },
  });

  const entries = {}
  for (const [id, row] of Object.entries(scheduledScripts)) {
    entries[`illarion:scheduled_script_${id}`] = row;
  }

  output.registryEntries(join(output.dataBundle.serverData, "scheduled_scripts"), entries);
}

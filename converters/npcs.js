import { join } from "path";
import csvToObjects from "../utils/csv-to-objects.js";
import { directionMappings } from "../illarion.js";

export default function convert({ intermediate, output, config }) {
  const npcs = csvToObjects(join(intermediate.server.csvDir, "npc.csv"), {
    id: "npc_id",
    columns: {
      npc_type: 'type',
      npc_posx: 'x',
      npc_posy: 'y',
      npc_posz: 'z',
      npc_faceto: 'facing',
      npc_is_healer: 'isHealer',
      npc_name: 'name',
      npc_script: 'script',
      npc_sex: 'sex',
      npc_hair: 'hair',
      npc_beard: 'beard',
      npc_hairred: 'hairRed',
      npc_hairgreen: 'hairGreen',
      npc_hairblue: 'hairBlue',
      npc_skinred: 'skinRed',
      npc_skingreen: 'skinGreen',
      npc_skinblue: 'skinBlue',
      npc_hairalpha: 'hairAlpha',
      npc_skinalpha: 'skinAlpha',
    },
  });

  const entries = {}
  const directions = config.legacyDirections ? directionMappings.legacy : directionMappings.current;
  for (const [id, row] of Object.entries(npcs)) {
    const {
      x, y, z,
      hairRed, hairGreen, hairBlue, hairAlpha,
      skinRed, skinGreen, skinBlue, skinAlpha,
      ...npc
    } = row;
    entries[`illarion:npc_${id}`] = {
      ...npc,
      enabled: true,
      coordinates: { x, y, z },
      hairColor: { red: hairRed, green: hairGreen, blue: hairBlue, alpha: hairAlpha },
      skinColor: { red: skinRed, green: skinGreen, blue: skinBlue, alpha: skinAlpha },
      facing: directions[row.facing],
      race: "illarion:race_" + row.type,
      entity: "illarion:races/race_" + row.type + "_" + row.sex,
      isHealer: row.isHealer == "t",
      metadata: { id: Number(id), name: row.name },
    };
  }

  output.registryEntries(join(output.dataBundle.serverData, "illarion", "npcs"), entries);
}

import { join } from "path";
import csvToObjects from "../utils/csv-to-objects.js";

export default function convert({ intermediate, output }) {
  const spawnpoints = csvToObjects(join(intermediate.server.csvDir, "spawnpoint.csv"), {
    id: "spp_id",
    columns: {
      spp_x: "x",
      spp_y: "y",
      spp_z: "z",
      spp_range: "range",
      spp_minspawntime: "minSpawnTime",
      spp_maxspawntime: "maxSpawnTime",
      spp_spawnall: "spawnAll",
      spp_spawnrange: "spawnRange",
    },
  });

  for (const [id, rows] of Object.entries(csvToObjects(join(intermediate.server.csvDir, "spawnpoint_monster.csv"), {
    id: "spm_id",
    columns: {
        spm_race: "monsterId",
        spm_count: "count",
    },
    groupById: true,
  }))) {
    const monsters = spawnpoints[id].monsters || (spawnpoints[id].monsters = {});
    for (const row of rows) {
      monsters[`illarion:monster_${row.monsterId}`] = row.count
    }
  }

  const entries = {}
  for (const [id, row] of Object.entries(spawnpoints)) {
    entries[`illarion:monster_spawn_${id}`] = {
      ...row,
      spawnAll: row.spawnAll == "t",
      metadata: { id: Number(id) },
    };
  }

  output.registryEntries(join(output.dataBundle.serverData, "illarion", "monster_spawns"), entries)
}
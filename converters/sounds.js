import { join } from "path";
import csvToObjects from "../utils/csv-to-objects.js";

export default function convert({ intermediate, output }) {
  const sounds = csvToObjects(join(intermediate.client.csvDir, "Sounds.csv"), {
    id: "id",
    columns: {
      name: 'name',
    },
  });

  const soundsEntries = {}
  for (const [id, row] of Object.entries(sounds)) {
    soundsEntries[`illarion:sound_${id}`] = {
        audio: `illarion:sound_${id}`,
        metadata: { 'soundId': Number(id) }
    };
  }

  const audioEntries = {}
  for (const [id, row] of Object.entries(sounds)) {
    audioEntries[`illarion:sound_${id}`] = {
        type: "simple",
        file: `client/sounds/illarion/${row.name}`,
        metadata: { soundId: Number(id) },
    }
  }

  output.registryEntries(join(output.dataBundle.commonData, "sounds"), soundsEntries);
  output.registryEntries(join(output.assetBundle.clientData, "audio"), audioEntries);
}

import { join } from "path";
import csvToObjects from "../utils/csv-to-objects.js";

export default function convert({ intermediate, output }) {
  const songs = csvToObjects(join(intermediate.client.csvDir, "Songs.csv"), {
    id: "id",
    columns: {
      name: 'name',
      friendlyName: 'friendlyName',
      loopStart: 'loopStart',
      loopEnd: 'loopEnd'
    },
    groupById: true
  });

  const soundsEntries = {}
  for (const [id, rows] of Object.entries(songs)) {
    for(let i = 0; i < rows.length; i++) {
      soundsEntries[`illarion:song_${id}_${i}`] = {
          audio: `illarion:song_${id}_${i}`,
          metadata: { 'songId': Number(id), 'songIndex': i }
      };
    }
  }

  const audioEntries = {}
  for (const [id, rows] of Object.entries(songs)) {
    for(let i = 0; i < rows.length; i++) {
      const row = rows[i];
      audioEntries[`illarion:song_${id}_${i}`] = {
        type: "music",
        file: `client/music/illarion/${row.name}`,
        metadata: { songId: Number(id), songIndex: i },
      };
    }
  }

  output.registryEntries(join(output.dataBundle.commonData, "sounds/songs"), soundsEntries);
  output.registryEntries(join(output.assetBundle.clientData, "audio/songs"), audioEntries);
}

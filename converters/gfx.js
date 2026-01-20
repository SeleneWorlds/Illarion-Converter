import { join } from "path";
import csvToObjects from "../utils/csv-to-objects.js";
import { speedToDuration } from "../illarion.js";

export default function convert({ intermediate, output }) {
  const effects = csvToObjects(join(intermediate.client.csvDir, "Effects.csv"), {
    id: "id",
    columns: {
      name: 'fileName',
      frame: 'frameCount',
      offx: 'offsetX',
      offy: 'offsetY',
      speed: 'animationSpeed',
    },
  });

  const entityEntries = {}
  for (const [id, row] of Object.entries(effects)) {
    entityEntries[`illarion:gfx_${id}`] = {
        components: {
          "illarion:visual": {
            type: "visual",
            visual: `illarion:gfx/gfx_${id}`,
          },
          "illarion:client_script": {
            type: "client_script",
            script: "illarion-gobaith-data.client.lua.entities.remove_after_animation",
          },
        },
        metadata: { gfxId: Number(id) },
    }
  }

  const visualEntries = {}
  for (const [id, row] of Object.entries(effects)) {
    const textures = []
    for (let idx = 0; idx < row.frameCount; idx++) {
      textures.push(`client/textures/illarion/effects/${row.fileName}-${idx}.png`)
    }
    visualEntries[`illarion:gfx_${id}`] = {
        type: 'animated',
        sortLayerOffset: 302,
        offsetX: row.offsetX,
        offsetY: -row.offsetY,
        textures,
        duration: speedToDuration(row.animationSpeed),
        instanced: true,
        metadata: { 'gfxId': Number(id) }
    };
  }

  output.registryEntries(join(output.dataBundle.commonData, "illarion", "entities/gfx"), entityEntries);
  output.registryEntries(join(output.assetBundle.clientData, "illarion", "visuals/gfx"), visualEntries);
}

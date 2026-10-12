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

  const timelineEntries = {}
  for (const id of Object.keys(effects)) {
    timelineEntries[`illarion:gfx_${id}`] = {
      events: [
        {
          type: "visual_animation",
          visual: `illarion:gfx/gfx_${id}`,
        },
      ],
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
        duration: speedToDuration(row.animationSpeed) * textures.length,
        instanced: true,
        metadata: { 'gfxId': Number(id) }
    };
  }

  output.registryEntries(join(output.dataBundle.clientData, "illarion", "timelines/gfx"), timelineEntries);
  output.registryEntries(join(output.assetBundle.clientData, "illarion", "visuals/gfx"), visualEntries);
}

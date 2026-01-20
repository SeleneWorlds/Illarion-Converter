import { join } from "path";
import csvToObjects from "../utils/csv-to-objects.js";
import { untransitionableTiles, transitionNeighbours } from "../illarion.js";

export default function convert({ intermediate, output, config }) {
  const transitions = csvToObjects(join(intermediate.client.csvDir, "Overlays.csv"), {
    id: "id",
    columns: {
      name: 'fileName',
      layer: 'layer',
    },
  });

  const transitionIdStart = config.legacyTransitions ? 1 : 0
  const transitionIdEnd = config.legacyTransitions ? Object.keys(transitionNeighbours).length : Object.keys(transitionNeighbours).length - 1

  const tileEntries = {}
  for (const [id, row] of Object.entries(transitions)) {
    for (let idx = transitionIdStart; idx <= transitionIdEnd; idx++) {
      tileEntries[`illarion:transition_${id}_${idx}`] = {
        visual: `illarion:transition_${id}_${idx}`,
        passableAbove: true,
        metadata: { tileId: Number(id), overlayId: idx },
      }
    }
  }

  const visualEntries = {}
  for (const [id, row] of Object.entries(transitions)) {
    for (let idx = transitionIdStart; idx <= transitionIdEnd; idx++) {
      visualEntries[`illarion:transition_${id}_${idx}`] = {
        type: 'simple',
        offsetX: 0,
        offsetY: -18,
        texture: `client/textures/illarion/tiles/${row.fileName}-${idx}.png`,
        metadata: { 'tileId': Number(id), 'overlayId': idx }
      };
    }
  }

  const transitionEntries = {}
  untransitionableTiles.forEach((id) => {
    transitionEntries[`illarion:tile_${id}`] = {
      priority: 999,
      transitions: []
    }
  })
  for (const [id, row] of Object.entries(transitions)) {
    const trans = []
    for (let idx = transitionIdStart; idx <= transitionIdEnd; idx++) {
      trans.push({
        neighbours: transitionNeighbours?.[idx - transitionIdStart],
        tile: `illarion:transition_${id}_${idx}`,
      })
    }
    transitionEntries[`illarion:tile_${id}`] = {
      priority: row.layer,
      transitions: trans
    }
  }

  output.registryEntries(join(output.dataBundle.commonData, "tiles/transitions"), tileEntries);
  output.registryEntries(join(output.dataBundle.commonData, "transitions"), transitionEntries);
  output.registryEntries(join(output.assetBundle.clientData, "visuals/transitions"), visualEntries);
}

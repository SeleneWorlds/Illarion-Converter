import { join } from "path";
import csvToObjects from "../utils/csv-to-objects.js";
import { colorMappings, speedToDuration } from "../illarion.js";

export default function convert({ intermediate, output }) {
  const clientTiles = csvToObjects(
    join(intermediate.client.csvDir, "Tiles.csv"),
    {
      id: "groundId",
      columns: {
        name: "fileName",
        frame: "frameCount",
        mode: "frameMode",
        speed: "animationSpeed",
        color: "mapColorIndex",
      },
    }
  );

  const tileVisuals = {};
  for (const [id, row] of Object.entries(clientTiles)) {
    const metadata = { tileId: Number(id), mapColorIndex: row.mapColorIndex }
    if (row.frameMode === 0) {
      tileVisuals[`illarion:tiles/tile_${id}`] = {
        type: "simple",
        offsetX: 0,
        offsetY: -18,
        texture: `client/textures/illarion/tiles/${row.fileName}.png`,
        metadata
      };
    } else {
      const textures = [];
      for (let idx = 0; idx < row.frameCount; idx++) {
        textures.push(
          `client/textures/illarion/tiles/${row.fileName}-${idx}.png`
        );
      }
      tileVisuals[`illarion:tiles/tile_${id}`] = {
        type: row.frameMode === 1 ? "animated" : "variants",
        offsetX: 0,
        offsetY: -18,
        textures,
        ...(row.frameMode === 1 ? { duration: speedToDuration(row.animationSpeed) } : {}),
        metadata
      };
    }
  }

  const tiles = csvToObjects(join(intermediate.server.csvDir, "tiles.csv"), {
    id: "til_id",
    columns: {
      til_german: "nameDe",
      til_english: "nameEn",
      til_isnotpassable: "impassable",
      til_walkingcost: "cost",
      til_script: 'script',
    },
  });

  for (const [id, row] of Object.entries(tiles)) {
    tiles[id].metadata = { tileId: Number(id), script: row.script || undefined, cost: row.cost || undefined };
    tiles[id].color = colorMappings[clientTiles[id]?.color] ?? undefined;
    tiles[id].impassable = row.impassable === 1;
    output.i18n(`illarion:tile_${id}`, "de", row.nameDe);
    output.i18n(`illarion:tile_${id}`, "en", row.nameEn);
    delete tiles[id].script;
    delete tiles[id].cost;
    delete tiles[id].nameDe;
    delete tiles[id].nameEn;
  }

  const entries = {};
  for (const [id, row] of Object.entries(tiles)) {
    entries[`illarion:tile_${id}`] = {
      ...row,
      visual: `illarion:tiles/tile_${id}`,
      metadata: { tileId: Number(id) },
    };
  }

  delete tiles["illarion:tile_0"];
  delete tileVisuals["illarion:tiles/tile_0"];

  output.registryEntries(join(output.dataBundle.commonData, "illarion", "tiles"), entries);
  output.registryEntries(join(output.assetBundle.clientData, "illarion", "visuals/tiles"), tileVisuals);
}

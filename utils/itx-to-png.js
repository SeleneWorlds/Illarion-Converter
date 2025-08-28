import { existsSync, readFileSync, createWriteStream } from "fs";
import { join, basename } from "path";
import { PNG } from "pngjs";

export default function convertItxInJarFolder(inputFile, outputDir) {
  const outPng = join(outputDir, basename(inputFile, ".itx") + ".png");
  if (existsSync(outPng)) return;
  const buffer = readFileSync(inputFile);
  const w = buffer.readUInt16BE(0);
  const h = buffer.readUInt16BE(2);
  const tw = buffer.readUInt16BE(4);
  const th = buffer.readUInt16BE(6);
  if (tw * th * 4 + 8 !== buffer.length) {
    throw new Error(
      `File size mismatch for ${inputFile}: ${buffer.length} != ${
        tw * th * 4 + 8
      }`
    );
  }
  const png = new PNG({ width: w, height: h });
  for (let y = 0; y < th; y++) {
    for (let x = 0; x < tw; x++) {
      const srcIndex = (y * tw + x) * 4 + 8;
      const dstIndex = (y * w + x) * 4;
      if (srcIndex < buffer.length && dstIndex < png.data.length) {
        png.data[dstIndex] = buffer[srcIndex];
        png.data[dstIndex + 1] = buffer[srcIndex + 1];
        png.data[dstIndex + 2] = buffer[srcIndex + 2];
        png.data[dstIndex + 3] = buffer[srcIndex + 3];
      }
    }
  }
  png.pack().pipe(createWriteStream(outPng));
}

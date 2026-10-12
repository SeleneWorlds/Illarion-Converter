import { resolve } from "path";
import { existsSync, mkdirSync, readFileSync, statSync, writeFileSync, unlinkSync } from "fs";
import extract from "extract-zip";

export default async function extractJar(jarPath, targetDir) {
  const absTargetDir = resolve(targetDir);
  const markerFile = `${absTargetDir}.complete.json`;
  const { size, mtimeMs } = statSync(jarPath);
  const signature = JSON.stringify({ source: resolve(jarPath), size, mtimeMs });
  if (existsSync(absTargetDir) && existsSync(markerFile) &&
      readFileSync(markerFile, "utf8") === signature) {
    return;
  }
  // A nonempty directory may be left behind by an interrupted extraction.
  if (existsSync(markerFile)) unlinkSync(markerFile);
  if (!existsSync(targetDir)) {
    mkdirSync(targetDir, { recursive: true });
  }
  await extract(jarPath, { dir: absTargetDir });
  writeFileSync(markerFile, signature);
}

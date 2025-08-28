import { resolve } from "path";
import { existsSync, mkdirSync, readdirSync } from "fs";
import extract from "extract-zip";

export default async function extractJar(jarPath, targetDir) {
  const absTargetDir = resolve(targetDir);
  if (existsSync(absTargetDir) && readdirSync(absTargetDir).length > 0) {
    return;
  }
  if (!existsSync(targetDir)) {
    mkdirSync(targetDir);
  }
  await extract(jarPath, { dir: absTargetDir });
}

import { readdirSync } from "fs";
import { join, extname } from "path";

export default function findFiles(rootDir, extensions) {
  if (!rootDir) return [];

  const exts = Array.isArray(extensions) ? extensions : [extensions];
  const normExts = exts
    .filter(Boolean)
    .map((e) => (e.startsWith(".") ? e.toLowerCase() : `.${e.toLowerCase()}`));

  const out = [];

  const walk = (dir) => {
    const entries = readdirSync(dir, { withFileTypes: true });
    for (const entry of entries) {
      const full = join(dir, entry.name);
      if (entry.isDirectory()) {
        walk(full);
      } else if (entry.isFile()) {
        const e = extname(entry.name).toLowerCase();
        if (normExts.includes(e)) out.push(full);
      }
    }
  };

  walk(rootDir);
  return out;
}

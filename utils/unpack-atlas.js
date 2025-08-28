import { readFileSync, writeFileSync, existsSync, mkdirSync } from "fs";
import { dirname, join } from "path";
import { PNG } from "pngjs";

export default function unpackAtlas(atlasFile) {
  if (!atlasFile) return;

  const xml = readFileSync(atlasFile, "utf8");
  const dir = dirname(atlasFile);

  const atlasBlocks = extractAtlasBlocks(xml);
  const written = [];
  for (const block of atlasBlocks) {
    const imgPath = join(dir, block.imagePath);
    if (!existsSync(imgPath)) continue;
    const atlasPng = PNG.sync.read(readFileSync(imgPath));
    const files = writeSprites(dir, atlasPng, block.entries);
    written.push(...files);
  }
  return written;
}

function toInt(v, def = 0) {
  const n = Number.parseInt(String(v ?? "").trim(), 10);
  return Number.isFinite(n) ? n : def;
}

function ensureParentDirs(filePath) {
  try {
    mkdirSync(dirname(filePath), { recursive: true });
  } catch {
    // ignore race
  }
}

function parseAttrs(s) {
  const out = {};
  // key="value" or key='value'
  const re = /(\w+)\s*=\s*"([^"]*)"|(\w+)\s*=\s*'([^']*)'/g;
  let m;
  while ((m = re.exec(s)) !== null) {
    if (m[1] != null) out[m[1]] = m[2];
    else if (m[3] != null) out[m[3]] = m[4];
  }
  return out;
}

function extractAtlasBlocks(xml) {
  const out = [];
  const re = /<\s*atlas\b([^>]*)>([\s\S]*?)<\s*\/\s*atlas\s*>/gi;
  let m;
  while ((m = re.exec(xml)) !== null) {
    const headerAttrs = parseAttrs(m[1] || "");
    const file = headerAttrs.file || headerAttrs.image || headerAttrs.src;
    if (!file) continue;
    const inner = m[2] || "";
    const entries = [];
    // sprites
    let ms;
    const spriteRe = /<\s*sprite\b([^>]*)\/>/gi;
    while ((ms = spriteRe.exec(inner)) !== null) {
      const a = parseAttrs(ms[1] || "");
      const name = a.name ?? null;
      if (!name) continue;
      entries.push({
        name: String(name),
        x: a.x,
        y: a.y,
        width: a.width,
        height: a.height,
      });
    }
    if (entries.length > 0) out.push({ imagePath: file, entries });
  }
  return out;
}

function writeSprites(baseDir, atlasPng, entries) {
  const written = [];
  for (const e of entries) {
    const name = e.name?.trim();
    const x = toInt(e.x, 0);
    const y = toInt(e.y, 0);
    const w = toInt(e.width ?? e.w, 0);
    const h = toInt(e.height ?? e.h, 0);
    if (!name || w <= 0 || h <= 0) continue;

    const outRel = name.toLowerCase().endsWith(".png") ? name : `${name}.png`;
    const outAbs = join(baseDir, outRel);
    // Skip if already extracted
    if (existsSync(outAbs)) {
      continue;
    }
    ensureParentDirs(outAbs);

    const sprite = new PNG({ width: w, height: h });
    for (let yy = 0; yy < h; yy++) {
      for (let xx = 0; xx < w; xx++) {
        const si = ((y + yy) * atlasPng.width + (x + xx)) << 2;
        const di = (yy * w + xx) << 2;
        sprite.data[di] = atlasPng.data[si];
        sprite.data[di + 1] = atlasPng.data[si + 1];
        sprite.data[di + 2] = atlasPng.data[si + 2];
        sprite.data[di + 3] = atlasPng.data[si + 3];
      }
    }

    const buf = PNG.sync.write(sprite);
    writeFileSync(outAbs, buf);
    written.push(outAbs);
  }
  return written;
}
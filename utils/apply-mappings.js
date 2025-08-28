import { existsSync, readFileSync } from "fs";
import { join } from "path";

export function loadMappings(basePath) {
  try {
    const file = join(basePath, "patches", "mappings.json");
    if (!existsSync(file)) return null;
    const raw = readFileSync(file, "utf-8");
    const json = JSON.parse(raw);
    // Expecting an object map { "old": "new", ... } possibly nested under a key
    if (json && typeof json === "object") {
      // allow both {"old":"new"} or { mappings: {"old":"new"} }
      return json.mappings && typeof json.mappings === "object" ? json.mappings : json;
    }
  } catch (e) {
    console.warn("Failed to load mappings.json:", e.message);
  }
  return null;
}

export function applyMappingsToString(str, mappings) {
  if (!mappings) return str;
  if (typeof str !== "string") return str;
  const mapped = mappings[str];
  return typeof mapped === "string" ? mapped : str;
}

export function applyMappingsDeep(value, mappings) {
  if (!mappings) return value;
  if (typeof value === "string") return applyMappingsToString(value, mappings);
  if (Array.isArray(value)) return value.map((v) => applyMappingsDeep(v, mappings));
  if (value && typeof value === "object") {
    const out = {};
    for (const [k, v] of Object.entries(value)) {
      // Rename keys and transform values
      const newKey = applyMappingsToString(k, mappings);
      out[newKey] = applyMappingsDeep(v, mappings);
    }
    return out;
  }
  return value;
}


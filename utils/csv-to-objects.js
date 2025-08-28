import { readFileSync } from "fs";
import { parse } from "csv-parse/sync";

export default function csvToObjects(csvPath, { id, columns, groupById } = {}) {
  const csvText = readFileSync(csvPath, "utf8");
  const records = parse(csvText, {
    columns: true,
    skip_empty_lines: true,
    trim: true,
    relax_column_count: true,
  });

  const output = {};
  for (const row of records) {
    let rowId = Array.isArray(id) ? id.map(k => row[k]).join("_") : row[id];
    if (!isNaN(rowId)) {
      rowId = Number(rowId);
    }

    const mappedRow = {};
    if (columns && Object.keys(columns).length > 0) {
      for (const [src, dst] of Object.entries(columns)) {
        mappedRow[dst] = row[src];
      }
    } else {
      for (const [k, v] of Object.entries(row)) {
        if (k === id) continue;
        mappedRow[k] = v;
      }
    }

    for (const [k, v] of Object.entries(mappedRow)) {
      if (typeof v === "string") {
        mappedRow[k] = v.trim();
      }
      if (v != '' && !isNaN(v)) {
        mappedRow[k] = Number(v);
      }
    }

    const existing = output[rowId];
    if (existing) {
      if (!groupById) {
        throw new Error(`Multiple rows with id ${rowId}`);
      }
      existing.push(mappedRow);
    } else {
      output[rowId] = groupById ? [mappedRow] : mappedRow;
    }
  }

  return output;
}

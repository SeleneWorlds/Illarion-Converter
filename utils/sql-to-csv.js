import { join } from 'path'
import { readFileSync, writeFileSync } from 'fs'

export default function convertSqlToCsvs(sqlFile, outputDir) {
  const content = readFileSync(sqlFile, "utf8");
  const lines = content.split(/\r?\n/);

  let i = 0;
  while (i < lines.length) {
    const line = lines[i];
    const m = line.match(/^COPY\s+([^\s(]+)\s*\(([^)]+)\)\s+FROM\s+stdin;$/);
    if (!m) {
      i++;
      continue;
    }
    const tableIdent = m[1];
    const columnsStr = m[2];
    const columns = columnsStr.split(",").map((c) => c.trim());
    // Prepare CSV file name: schema.table -> schema_table.csv, strip quotes
    const safeTable = tableIdent
      .replace(/^["']|["']$/g, "")
      .replace(/\./g, "_")
      .replace("devserver_", "");
    const outCsvPath = join(outputDir, `${safeTable}.csv`);

    // Write header
    const header = columns.map((c) => c);
    const rows = [header.join(",")];

    i++; // move to first data row after COPY ... FROM stdin;
    while (i < lines.length && lines[i] !== "\\.") {
      const dataLine = lines[i];
      // Split by tab. Postgres COPY uses \N for NULL
      const fields = dataLine.split("\t").map((v) => (v === "\\N" ? "" : v));
      const csvLine = fields
        .map((v) => {
          const s = String(v);
          const needsQuote = /[",\n]/.test(s);
          const escaped = s.replace(/"/g, '""');
          return needsQuote ? `"${escaped}"` : escaped;
        })
        .join(",");
      rows.push(csvLine);
      i++;
    }

    // Skip the "\\." line
    if (i < lines.length && lines[i] === "\\.") i++;

    writeFileSync(outCsvPath, rows.join("\n"));
  }
}

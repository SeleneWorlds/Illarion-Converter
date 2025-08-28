import { existsSync } from "fs";
import { execSync } from "child_process";
import { join, basename } from "path";

export default async function convertDumpToSql(dumpFile, outputDir) {
  const sqlFile = join(outputDir, basename(dumpFile, ".dump") + ".sql");
  if (!existsSync(sqlFile)) {
    execSync(
      `pg_restore --no-owner --no-privileges --format=c --file="${sqlFile}" "${dumpFile}"`
    );
  }
}

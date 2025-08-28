import { join } from "path";
import { existsSync, readdirSync, mkdirSync } from "fs";

export default function create(basePath) {
  const intermediateDir = join(basePath, "intermediate");
  const unpackedJarsDir = join(intermediateDir, "unpacked_jars");
  const clientCsvDir = join(intermediateDir, "client_csv");
  const serverCsvDir = join(intermediateDir, "server_csv");
  const sqlDir = join(intermediateDir, "sql");
  if (!existsSync(intermediateDir)) {
    mkdirSync(intermediateDir);
  }
  if (!existsSync(unpackedJarsDir)) {
    mkdirSync(unpackedJarsDir);
  }
  if (!existsSync(clientCsvDir)) {
    mkdirSync(clientCsvDir);
  }
  if (!existsSync(serverCsvDir)) {
    mkdirSync(serverCsvDir);
  }
  if (!existsSync(sqlDir)) {
    mkdirSync(sqlDir);
  }
  return {
    client: {
      unpackedJarsDir,
      csvDir: clientCsvDir,
    },
    server: {
      csvDir: serverCsvDir,
      sqlDir,
      listSqlFiles() {
        return readdirSync(sqlDir)
          .filter((f) => f.endsWith(".sql"))
          .map((f) => join(sqlDir, f));
      }
    },
  };
}

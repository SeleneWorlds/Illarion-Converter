import { join } from "path";
import { existsSync, readdirSync } from "fs";

export default function create(basePath) {
  const clientDir = join(basePath, "client");
  const serverDir = join(basePath, "server");
  const databaseDir = join(serverDir, "database");
  const scriptsDir = join(serverDir, "scripts");
  const publicKeyFile = join(clientDir, "public.pem");

  if (!existsSync(clientDir)) {
    throw new Error("No client directory found at " + clientDir);
  }
  if (!existsSync(serverDir)) {
    throw new Error("No server directory found at " + serverDir);
  }
  if (!existsSync(databaseDir)) {
    throw new Error("No database directory found at " + databaseDir);
  }
  if (!existsSync(scriptsDir)) {
    throw new Error("No scripts directory found at " + scriptsDir);
  }
  if (!existsSync(publicKeyFile)) {
    throw new Error("No public key file found at " + publicKeyFile);
  }

  return {
    client: {
      rootDir: clientDir,
      publicKeyFile
    },
    server: {
      rootDir: serverDir,
      databaseDir,
      scriptsDir
    },
  };
}

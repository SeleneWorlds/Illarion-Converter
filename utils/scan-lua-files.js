import { existsSync, readdirSync } from "fs";
import { join, extname } from "path";

export default function scanLuaFiles(pathToLua) {
  const preloads = {};
  if (!existsSync(pathToLua)) return preloads;

  const walk = (dir, fileList = []) => {
    readdirSync(dir, { withFileTypes: true }).forEach((entry) => {
      const fullPath = join(dir, entry.name);
      if (entry.isDirectory()) {
        walk(fullPath, fileList);
      } else if (entry.isFile() && extname(entry.name) === ".lua") {
        fileList.push(fullPath);
      }
    });
    return fileList;
  };

  const luaFiles = walk(pathToLua);
  for (const file of luaFiles) {
    const relFsPath = file.substring(pathToLua.length + 1); 
    const relPath = "server/lua/" + relFsPath;
    const moduleName = relFsPath
      .replace(/\\/g, "/") // normalize to forward slashes
      .replace(/\.lua$/i, "") // drop extension
      .replace(/\//g, "."); // convert to dot notation for Lua modules

    preloads[moduleName] = {
      file: relPath.replace(/\\/g, "/"),
      encoding: "ISO-8859-15"
    }
  }

  return preloads;
}

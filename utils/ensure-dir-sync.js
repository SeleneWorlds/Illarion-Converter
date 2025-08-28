import { existsSync, mkdirSync } from "fs";

export default function ensureDirSync(dir) {
  if (!existsSync(dir)) {
    mkdirSync(dir, { recursive: true });
  }
}

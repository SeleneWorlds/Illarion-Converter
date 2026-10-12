import test from "node:test";
import assert from "node:assert/strict";
import { mkdtempSync, mkdirSync, writeFileSync, readFileSync, rmSync } from "node:fs";
import { tmpdir } from "node:os";
import { join } from "node:path";
import extractJar from "../utils/extract-jar.js";

// Contains both stored and deflated entries to exercise ZIP stream handling.
const jar = Buffer.from("UEsDBBQAAAAAAGNLTF0RVdeZCwAAAAsAAAAKAAAAc3RvcmVkLnR4dHN0b3JlZCBkYXRhUEsDBBQAAAAIAGNLTF0MxS3QHgAAANwFAAAVAAAAbmVzdGVkL2NvbXByZXNzZWQudHh0S87PLShKLS5OTVFISSxJTB7ljnJHuaPcUe7Q5wIAUEsBAhQDFAAAAAAAY0tMXRFV15kLAAAACwAAAAoAAAAAAAAAAAAAAIABAAAAAHN0b3JlZC50eHRQSwECFAMUAAAACABjS0xdDMUt0B4AAADcBQAAFQAAAAAAAAAAAAAAgAEzAAAAbmVzdGVkL2NvbXByZXNzZWQudHh0UEsFBgAAAAACAAIAewAAAIQAAAAAAA==", "base64");

test("extracts all entries and recovers a partially unpacked JAR", async () => {
  const root = mkdtempSync(join(tmpdir(), "illarion-extract-"));
  try {
    const source = join(root, "resources.jar");
    const target = join(root, "unpacked");
    writeFileSync(source, jar);
    mkdirSync(target);
    writeFileSync(join(target, "stored.txt"), "partial");

    await extractJar(source, target);
    assert.equal(readFileSync(join(target, "stored.txt"), "utf8"), "stored data");
    assert.equal(readFileSync(join(target, "nested/compressed.txt"), "utf8"), "compressed data".repeat(100));
    const marker = readFileSync(`${target}.complete.json`, "utf8");
    assert.equal(JSON.parse(marker).size, jar.length);

    await extractJar(source, target);
    assert.equal(readFileSync(`${target}.complete.json`, "utf8"), marker);

    // Failed extraction must not leave a valid completion marker.
    writeFileSync(source, "invalid archive");
    await assert.rejects(extractJar(source, target));
    assert.throws(() => readFileSync(`${target}.complete.json`), { code: "ENOENT" });
  } finally {
    rmSync(root, { recursive: true, force: true });
  }
});

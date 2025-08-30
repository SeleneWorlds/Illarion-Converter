import { readFileSync, writeFileSync } from "fs";
import { join, basename } from "path";
import crypto from "crypto";
import { csvHeadersByType } from "../illarion.js";

export default function decryptDataFile(inputFile, outputDir, publicKeyFile, variant) {
  const csvFile = inputFile.replace(/\.dat$/i, ".csv");
  const buffer = readFileSync(inputFile);
  const publicKey = readFileSync(publicKeyFile, "utf-8");
  let offset = 0;
  const wrappedKeyLength = buffer.readInt32BE(offset);
  offset += 4;
  const wrappedKey = buffer.slice(offset, offset + wrappedKeyLength);
  offset += wrappedKeyLength;
  const desKey = crypto.publicDecrypt(
    {
      key: publicKey,
      padding: crypto.constants.RSA_PKCS1_PADDING,
    },
    wrappedKey
  );
  const encryptedData = buffer.slice(offset);
  const decipher = crypto.createDecipheriv("des-ecb", desKey, null);
  decipher.setAutoPadding(true);
  const decrypted = Buffer.concat([
    decipher.update(encryptedData),
    decipher.final(),
  ]);
  let csvText = decrypted.toString("utf-8");

  // Try to detect type from file path
  let detectedType = null;
  for (const type of Object.keys(csvHeadersByType)) {
    if (csvFile.toLowerCase().includes(type.toLowerCase())) {
      detectedType = type;
      break;
    }
  }
  if (csvText.startsWith("/NOP/")) {
    if (detectedType && csvHeadersByType[detectedType]) {
      const headerSpec = csvHeadersByType[detectedType];
      let headers;
      if (Array.isArray(headerSpec)) {
        headers = headerSpec;
      } else if (headerSpec && typeof headerSpec === "object") {
        if (variant && headerSpec[variant]) {
          headers = headerSpec[variant];
        } else {
          const first = Object.values(headerSpec)[0];
          headers = Array.isArray(first) ? first : [];
        }
      }
      if (headers && headers.length) {
        const lines = csvText.split(/\r?\n/);
        lines[0] = headers.join(",");
        csvText = lines.join("\n");
      }
    }
  }

  writeFileSync(join(outputDir, basename(csvFile)), csvText);
}

import test from "node:test";
import assert from "node:assert/strict";
import { mkdtempSync, mkdirSync, writeFileSync, readFileSync, rmSync } from "node:fs";
import { tmpdir } from "node:os";
import { join } from "node:path";
import convertItems from "../converters/items.js";
import createOutput from "../output.js";

test("exports item definition fields and localized text to generated JSON", () => {
  const root = mkdtempSync(join(tmpdir(), "illarion-items-"));
  try {
    const client = join(root, "client");
    const server = join(root, "server");
    mkdirSync(client);
    mkdirSync(server);
    writeFileSync(join(client, "Items.csv"), "id,name,frame,mode\n42,apple,1,0\n");
    writeFileSync(join(server, "items.csv"), [
      "itm_id,itm_agingspeed,itm_brightness,itm_buystack,itm_name_english,itm_description_english,itm_name_german,itm_description_german,itm_level,itm_maxstack,itm_objectafterrot,itm_rareness,itm_rotsininventory,itm_weight,itm_worth",
      '42,10,2,3,Apple,"A red, ripe apple.",Äpfel,Ein süßer Apfel.,4,50,43,6,t,100,20',
      "43,,,,123,,,,,,,0,,",
    ].join("\n"));
    for (const [file, header] of Object.entries({
      container: "con_itemid", weapon: "wp_itemid",
      armor: "arm_itemid", tilesmodificators: "tim_itemid",
    })) {
      writeFileSync(join(server, `${file}.csv`), `${header}\n`);
    }

    const output = createOutput(root);
    convertItems({ intermediate: { client: { csvDir: client }, server: { csvDir: server } }, output });
    const readItem = id => JSON.parse(readFileSync(
      join(output.dataBundle.serverData, "illarion", "items", `item_${id}.json`), "utf8"
    ));
    const item = readItem(42);
    const expected = {
      agingSpeed: 10, brightness: 2, buyStack: 3,
      nameEnglish: "Apple", descriptionEnglish: "A red, ripe apple.",
      nameGerman: "Äpfel", descriptionGerman: "Ein süßer Apfel.",
      level: 4, maxStack: 50,
      objectAfterRot: "illarion:item_43", rareness: 6,
      rotsInInventory: true, weight: 100, worth: 20,
    };
    for (const [field, value] of Object.entries(expected)) {
      assert.equal(item[field], value, field);
    }
    const schema = JSON.parse(readFileSync(new URL(
      "../vbu/extra/illarion-vbu-data/common/data/illarion/registries/items.json", import.meta.url
    ), "utf8")).schema;
    for (const field of Object.keys(expected)) {
      assert.ok(Object.hasOwn(schema, field), `schema defines ${field}`);
    }

    const empty = readItem(43);
    assert.equal(Object.hasOwn(empty, "itemId"), false);
    assert.equal(empty.nameEnglish, "123");
    for (const field of ["nameGerman", "descriptionGerman", "descriptionEnglish"]) {
      assert.equal(empty[field], "", field);
    }
    for (const field of ["agingSpeed", "brightness", "buyStack", "level", "maxStack", "rareness", "weight", "worth"]) {
      assert.equal(empty[field], 0, field);
    }
    assert.equal(empty.rotsInInventory, false);
    assert.equal(empty.objectAfterRot, null);
  } finally {
    rmSync(root, { recursive: true, force: true });
  }
});

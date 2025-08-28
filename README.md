# Illarion Converter

This NodeJS script extracts data from provided Illarion files and converts them to Selene bundles.

## Prerequisites

- [NodeJS (>= 22) with npm](https://nodejs.org/en/download)

## Usage

### Gobaith

Obtain the following files and place them inside the `gobaith` directory:

- `gobaith/client/public.pem` (located within the client jar file)
- `gobaith/client/rsc_chars.jar` (no longer publicly available afaik)
- `gobaith/client/rsc_effects.jar` (no longer publicly available afaik)
- `gobaith/client/rsc_gui.jar` (no longer publicly available afaik)
- `gobaith/client/rsc_items.jar` (no longer publicly available afaik)
- `gobaith/client/rsc_sound.jar` (no longer publicly available afaik)
- `gobaith/client/rsc_tiles.jar` (no longer publicly available afaik)
- `gobaith/server/database/devserver_content.dump` (only VBU data is published, see below; you can use that, but the resulting bundles will have some mismatches)
- `gobaith/server/scripts/` (empty folder - afaik there is no Gobaith scripts for Lua 5.1+)

Then run the following command:

```bash
npm run convert gobaith
```

### VBU

Obtain the following files and place them inside the `vbu` directory:

- `vbu/client/public.pem` (located within the client jar file)
- `vbu/client/rsc_books.jar` (found on [Illarion's Maven](https://illarion.org/media/java/maven/org/illarion/))
- `vbu/client/rsc_chars.jar` (found on [Illarion's Maven](https://illarion.org/media/java/maven/org/illarion/))
- `vbu/client/rsc_effects.jar` (found on [Illarion's Maven](https://illarion.org/media/java/maven/org/illarion/))
- `vbu/client/rsc_gui.jar` (found on [Illarion's Maven](https://illarion.org/media/java/maven/org/illarion/))
- `vbu/client/rsc_items.jar` (found on [Illarion's Maven](https://illarion.org/media/java/maven/org/illarion/))
- `vbu/client/rsc_music.jar` (found on [Illarion's Maven](https://illarion.org/media/java/maven/org/illarion/))
- `vbu/client/rsc_sounds.jar` (found on [Illarion's Maven](https://illarion.org/media/java/maven/org/illarion/))
- `vbu/client/rsc_tables.jar` (found on [Illarion's Maven](https://illarion.org/media/java/maven/org/illarion/))
- `vbu/client/rsc_tiles.jar` (found on [Illarion's Maven](https://illarion.org/media/java/maven/org/illarion/))
- `vbu/server/scripts` (found at [Illarion/Illarion-Content](https://github.com/Illarion-eV/Illarion-Content) repository)
- `vbu/server/database/devserver_content.dump` (obtained via [local server endpoint](https://illarion.org/media/localserver/db_dumps.php?request=content))

Then run the following command:

```bash
npm run convert vbu
```

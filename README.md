# Destiny 1 PS3 Server Research Workspace

This repository is a reference and development workspace for research toward a Destiny 1 PS3 private/offline server compatible with RPCS3.

## Target

Current coherent PS3 launch-disc target:

- Base/disc ELF SHA-256: `e14e1cedaf85a10ef08a3d4b86d86ff942f222cd27fde9a68d612947169846c6`
- 247 PS3 package files
- Total package bytes: `7,897,329,664`
- Package profile: PS3, big-endian, container version 4, generation 0
- Observed build string: `41345.14.06.30.2046.live`

Do not commit proprietary Destiny executables, package files, keys, decrypted game assets, or other copyrighted game data to this repository.

## Research direction

Primary milestone:

`Destiny PS3 retail -> RPCS3 endpoint redirection -> local sign-on -> first BAP connection`

Then:

`profile/character -> orbit -> activity host -> destination -> persistence/multiplayer`

## Upstream references

See [SOURCES.md](SOURCES.md) for the curated upstream list and [SOURCE_POLICY.md](SOURCE_POLICY.md) for licensing boundaries.

Run `tools/fetch-sources.bat` on Windows to clone the public upstream repositories into an ignored local `upstream/` folder.

## Important compatibility warning

`Blam-Network/web-tiger` currently targets Destiny build `36735.13.12.02.1953.alpha`, while this project's PS3 retail/disc estate reports `41345.14.06.30.2046.live`.

web-tiger is therefore architectural and protocol research material, not a drop-in server for this PS3 build.

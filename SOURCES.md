# Upstream Research Sources

This catalogue tracks public projects that are materially useful to Destiny 1 PS3 server preservation/reimplementation work.

## Tier 1: directly relevant

### Blam-Network/web-tiger
- Repository: https://github.com/Blam-Network/web-tiger
- Default branch: `main`
- Role: known Destiny web/service implementation architecture.
- Implements sign-on, ticket/datamine, Bungie Access Protocol (BAP), Activity Host and Demonware-related services for an older Destiny alpha build.
- Critical caveat: package metadata currently declares `UNLICENSED`; do not copy its source into this repository. Treat as external reference/research material.
- Known target: `36735.13.12.02.1953.alpha`.

### Blam-Network/rsat
- Repository: https://github.com/Blam-Network/rsat
- Default branch: `main`
- Role: schema-first Destiny RSAT bitstream encode/decode.
- License: MIT.
- High-value candidate for protocol compatibility work and test-vector generation.

### v4nguard/tiger-pkg
- Repository: https://github.com/v4nguard/tiger-pkg
- Default branch: `main`
- Role: Destiny Tiger package parsing.
- Supports legacy Destiny package variants including PS3.
- License: MIT.
- Useful for mapping package/tag hashes and content metadata once network bootstrap progresses.

### RPCS3/rpcs3
- Repository: https://github.com/RPCS3/rpcs3
- Role: target PS3 emulator and network implementation reference.
- Important feature: RPCS3 supports DNS/IP hostname redirection through its Network `IP swap list`.
- Observed source behavior: mappings are `pattern=IPv4`, multiple mappings separated by `&&`, with `*` wildcard support.
- Also useful for sys_net behavior and future game-patch integration if TLS pinning or hardcoded endpoints require executable patches.

## Tier 2: Tiger/tag/content research

### v4nguard/quicktag
- Repository: https://github.com/v4nguard/quicktag
- Default branch: `main`
- Role: Tiger tag inspection/research.
- License should be reviewed before incorporating code; use primarily as tooling/reference unless compatibility is confirmed.

### v4nguard/tiger-parse
- Repository: https://github.com/v4nguard/tiger-parse
- Default branch: `main`
- Role: Tiger parsing/reference implementation.
- Useful alongside tiger-pkg and package research.

### v4nguard/destinypkgtool
- Archived/older package tooling where available publicly.
- Role: historical package-layout reference.

## Tier 3: server/emulator architecture references

### craftycodie/Xenia-WebServices
- Repository: https://github.com/craftycodie/Xenia-WebServices
- Important branch: `feature/xhttp`
- Role: Xenia-side platform/web service redirection architecture.
- Not directly usable by RPCS3, but useful to understand how existing Destiny preservation work redirects platform service calls to local services.

### AdrianCassar/xenia-canary
- Repository: https://github.com/AdrianCassar/xenia-canary
- Default/netplay-related branch: `netplay_canary_experimental`
- Role: supporting reference for Xenia netplay/web-service modifications used by adjacent Destiny preservation work.
- Xbox-specific; do not assume implementation details apply to PS3.

### Blam-Network/sunrise_plugin
- Known from public setup material but source may be private/unavailable.
- Xbox 360-specific plugin used by adjacent Destiny research.
- Do not vendor unavailable/private code.
- If legitimate source access is later provided, inspect it only as an architectural reference for what equivalent RPCS3/PPC patches might need to accomplish.

## Tier 4: protocol/background research

### Demonware research and reimplementations
Useful for understanding lobby/auth/session concepts where Destiny retail uses Demonware-related systems. Individual projects must be reviewed for license and version applicability before code reuse.

### Bungie public API / manifest documentation
Useful as terminology and data-model background only. Retail Destiny game-server traffic is not assumed to match Bungie's public web API.

## Current PS3 target estate

- ELF SHA-256: `e14e1cedaf85a10ef08a3d4b86d86ff942f222cd27fde9a68d612947169846c6`
- ELF format: 64-bit big-endian PowerPC64
- Entry point: `0x1719a10`
- Package count: 247
- Package total bytes: `7,897,329,664`
- Package profile: PS3 / big endian / version 4 / generation 0
- Observed build string: `live tool_lib test pc_x64 41345.14.06.30.2046.live 14.06.30 2046`

A separately identified patch-0024 ELF has SHA-256 `e7f100b38bbaf6c23f71b390fdb103d31b427187c38dcfbd47e09c94c4a44206`, but must not be paired blindly with the generation-0 disc package estate.

## Recommended implementation order

1. Probe the retail PS3 ELF for real service hostnames, URI fragments, protocol names, ports and networking landmarks.
2. Redirect verified endpoints through RPCS3's IP swap list.
3. Capture and identify the retail sign-on request shape.
4. Generate a minimal locally accepted sign-on response/ticket.
5. Reach the first retail BAP connection.
6. Compare/implement retail RSAT message differences.
7. Implement profile and character bootstrap.
8. Reach orbit.
9. Implement Activity Host/destination launch.
10. Add persistence and multiplayer/session behavior.

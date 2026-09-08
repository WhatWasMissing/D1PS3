# D1PS3 downloadable research resources

This folder catalogs public downloads that are useful for Destiny 1 PS3 server/preservation research. Proprietary Destiny executables, package data, keys, and copyrighted game assets are intentionally excluded.

## High-priority downloads

### Blam Network RSAT
- Purpose: Destiny RSAT bitstream encode/decode reference.
- License: MIT.
- Pinned commit: `31521f8aeb9b5dee585ff8353661000623951c2e`.
- Source ZIP: https://github.com/Blam-Network/rsat/archive/31521f8aeb9b5dee585ff8353661000623951c2e.zip

### V4NGUARD tiger-pkg
- Purpose: Tiger package parsing, including Destiny legacy PS3 package support.
- License: MIT.
- Pinned commit: `657f41c0851001b2d371592b2f7a5cb9c686ddb4`.
- Source ZIP: https://github.com/v4nguard/tiger-pkg/archive/657f41c0851001b2d371592b2f7a5cb9c686ddb4.zip

### V4NGUARD tiger-parse
- Purpose: Tiger/tag structure parsing support.
- License: MIT.
- Pinned commit: `6b4da3d1e026d944ba42059b85e6b7d07e58781a`.
- Source ZIP: https://github.com/v4nguard/tiger-parse/archive/6b4da3d1e026d944ba42059b85e6b7d07e58781a.zip

### V4NGUARD QuickTag
- Purpose: Destiny 1/2 Tiger structure inspection and tag analysis.
- License: GPL-3.0.
- Pinned commit: `bdad2e92442439bb0f71c67aca608b7ca0a8c74c`.
- Source ZIP: https://github.com/v4nguard/quicktag/archive/bdad2e92442439bb0f71c67aca608b7ca0a8c74c.zip
- Latest packaged build located: `quicktag.zip`, release v0.9.0.
- Binary ZIP: https://github.com/v4nguard/quicktag/releases/download/v0.9.0/quicktag.zip
- Reported SHA-256: `9284c837e32376c8c09b8b33d808259a00ffdea54cb05c11b3c7f6060cb7e3ce`.

## Emulator/network research

### RPCS3
- Purpose: PS3 emulation, sys_net behavior, DNS/IP swap implementation, game patches, debugger reference.
- License: GPL-2.0.
- Current tagged source located during research: v0.0.42.
- Source ZIP: https://github.com/RPCS3/rpcs3/archive/refs/tags/v0.0.42.zip
- RPCS3 itself recommends using its rolling builds rather than treating the tag as a stable binary release.

### V4NGUARD RPCS3 fork
- Purpose: historical Destiny-focused RPCS3 work and possible Destiny crash/workaround research.
- License: GPL-2.0.
- Source ZIP: https://github.com/cohaereo/rpcs3-v4nguard/archive/refs/heads/master.zip
- Historical build: https://github.com/cohaereo/rpcs3-v4nguard/releases/download/dirty-08e2b9d/rpcs3.zip
- Other preserved historical builds are available on the repository releases page.

### Xenia Canary Netplay
- Purpose: Xbox-side architecture/reference for platform-service redirection and netplay flow. Not directly usable as the PS3 emulator.
- Latest release located during research: v6.0.0.
- Windows build: https://github.com/AdrianCassar/xenia-canary/releases/download/v6.0.0/xenia_canary_netplay_windows.zip
- Reported SHA-256: `17008ec82867ac5e83efae04faf4c6ead5dba256865b81fde267f80fcac00d97`.
- Source ZIP: https://github.com/AdrianCassar/xenia-canary/archive/refs/tags/v6.0.0.zip

### Xenia-WebServices
- Purpose: reference architecture for emulator-side platform API redirection and title-specific services.
- Relevant branch: `feature/xhttp`.
- Source ZIP: https://github.com/craftycodie/Xenia-WebServices/archive/refs/heads/feature/xhttp.zip

## Reference-only source

### Blam Network web-tiger
- Purpose: existing Destiny sign-on, BAP, activity-host, DemonWare and Datamine implementation/research.
- Current commit observed: `9c1fe49e65a5bd57287247b995f40997fc9787a3`.
- Source URL: https://github.com/Blam-Network/web-tiger
- Archive URL: https://github.com/Blam-Network/web-tiger/archive/9c1fe49e65a5bd57287247b995f40997fc9787a3.zip
- **Do not vendor or copy this source into D1PS3 without an explicit license grant.** Its package currently declares the project unlicensed. Use it as external reference only.

## Why most large binaries are linked rather than committed

GitHub repositories are a poor place to mirror large emulator/tool binaries, and duplicating upstream release assets makes provenance and updates harder. The repository therefore stores exact direct-download links, versions, hashes where published, and source pins. Small license/reference documents may be copied into this folder when redistribution is clearly allowed.

## Explicitly excluded

Do not add Destiny PS3 EBOOT/ELF files, decrypted executables, package archives, title/update content, keys, Sony firmware, or other proprietary game/platform files. Keep those local and feed them to project tooling by path.

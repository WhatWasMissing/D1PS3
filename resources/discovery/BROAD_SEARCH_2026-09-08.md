# Broad Destiny / PS3 preservation resource search — 2026-09-08

This is a discovery index for public material that may help D1PS3. It intentionally does not vendor proprietary Destiny/Sony files, keys, firmware, EBOOTs, decrypted ELFs, package content, or unlicensed source.

## Highest-value findings

### RPCS3 Destiny custom-server history

- RPCS3 issue #11386 documents the **D1CS Project** testing Destiny 1 custom servers on RPCS3. It records `sys_net_bnet_bind` / `-SYS_NET_EADDRINUSE`, Bungie errors `marionberry` and `stingray`, a sign-on loop, and explicitly says Destiny required changing the IP/Hosts switch.
  - https://github.com/RPCS3/rpcs3/issues/11386
- RPCS3 issue #11744 is a historical request from the same researcher for a Destiny 1 patch which "adds support for Destiny by changing its protocols inside the game" for custom servers. The linked Hastebin appears historical/ephemeral, but the issue itself is important prior art.
  - https://github.com/RPCS3/rpcs3/issues/11744
- V4NGUARD RPCS3 commit `1f065d3f6a47df34f5f5178ba6ed24370937636c` is especially important. It implements missing `sys_net_bnet_sendmsg` behavior and is labelled with a Destiny 1 crash workaround. This is much more directly relevant than merely preserving the old executable build.
  - https://github.com/cohaereo/rpcs3-v4nguard/commit/1f065d3f6a47df34f5f5178ba6ed24370937636c
- V4NGUARD RPCS3 releases preserve three historical builds:
  - `dirty-57d5013` — RSX texture workaround
  - `dirty-1f065d3` — updated implementation + Destiny 1 crash workaround
  - `dirty-08e2b9d` — verification errors disabled + shader crash workaround
  - https://github.com/cohaereo/rpcs3-v4nguard/releases

### Destiny package / Tiger-engine tools

- `v4nguard/tiger-pkg` — current MIT package library; explicitly supports Destiny Legacy / Taken King on PS3 and game/platform codes `d1_ttk` / `ps3`.
  - https://github.com/v4nguard/tiger-pkg
- `v4nguard/destinypkgtool` — archived MIT Destiny 1 package unpacker/verification tool. Historically valuable because it predates tiger-pkg and contains `pkg_pubkey.bin` in its public repository. Latest commit `6a90ab35ed9db8842cb4a551e23ff6a6748b9747` marks it deprecated in favor of the successor.
  - https://github.com/v4nguard/destinypkgtool
- `nblockbuster/destiny-unpacker-rs` — archived MIT Rust Destiny unpacker; latest observed commit `a622d94c194f4dc44b7b0610d08116261df81df5`.
  - https://github.com/nblockbuster/destiny-unpacker-rs
- `v4nguard/swizzleinator` — MIT texture swizzle/deswizzle library; latest observed commit `5648d9b2f924d53dc158b7f304fdd8f369c28d52`, version 0.2.1.
  - https://github.com/v4nguard/swizzleinator
- `v4nguard/quicktag` — package/tag structure explorer; especially useful for scanning 8080 structures, references, localization hashes and raw strings.
  - https://github.com/v4nguard/quicktag
- `v4nguard/tiger-parse` — MIT Tiger parsing support.
  - https://github.com/v4nguard/tiger-parse

### Broader Destiny reverse-engineering references

Project Sunrise's public README points to a useful ecosystem of prior research. These are not all D1/PS3-compatible, but may contain reusable format knowledge or server architecture ideas:

- `cohaereo/alkahest`
  - https://github.com/cohaereo/alkahest
- `MontagueM/DestinyDocs`
  - https://github.com/MontagueM/DestinyDocs
- `cohaereo/destinydocs`
  - https://github.com/cohaereo/destinydocs
- `MontagueM/DestinyUnpacker`
  - https://github.com/MontagueM/DestinyUnpacker
- `MontagueM/DestinyUnpackerCPP`
  - https://github.com/MontagueM/DestinyUnpackerCPP
- `nblockbuster/bungie-lua-decompiler`
  - https://github.com/nblockbuster/bungie-lua-decompiler
- `MontagueM/D2TagParser`
  - https://github.com/MontagueM/D2TagParser
- `nblockbuster/D2StaticDocs`
  - https://github.com/nblockbuster/D2StaticDocs
- `MontagueM/DestinyMapmining`
  - https://github.com/MontagueM/DestinyMapmining
- `MontagueM/D2Maps`
  - https://github.com/MontagueM/D2Maps
- `nblockbuster/D2TextureRipper`
  - https://github.com/nblockbuster/D2TextureRipper

### Server/protocol references

- `Blam-Network/web-tiger` — direct Destiny server architecture reference (sign-on, BAP, activity hosts, DemonWare), but its repository currently declares itself UNLICENSED. **Reference only; do not copy source into D1PS3.**
  - https://github.com/Blam-Network/web-tiger
- `Blam-Network/rsat` — MIT schema-first Destiny RSAT codec and a much safer direct dependency/reference.
  - https://github.com/Blam-Network/rsat
- `Demonware-Custom-Server/demonware-cod4` — non-Destiny DemonWare server implementation referenced by Sunrise. Useful for understanding DemonWare patterns, but verify licensing and protocol applicability before reuse.
  - https://github.com/Demonware-Custom-Server/demonware-cod4
- `jordam/demonbugger` and `hosseinpourziyaie/demonware-companion` — additional DemonWare research references cited by Sunrise.
  - https://github.com/jordam/demonbugger
  - https://github.com/hosseinpourziyaie/demonware-companion

### Networking architecture documentation

- Public Destiny networking write-up covering Activity Hosts / Bubble Activity Hosts:
  - https://gist.github.com/nessus42/df399f31e4ab41192cbd51b32e9d7b73
- GDC notes covering Destiny's Activity Host/Bubble Host architecture, including AH over TCP and BH over UDP:
  - https://github.com/Kadino/gdconf_notes/blob/main/gdc2021.md

### Other PS3 service-revival reference

- `DestinationHome/Destination-Home-Online` restores PlayStation Home services on both real PS3 and RPCS3. It is not Destiny-specific, but is useful architectural prior art for endpoint redirection, RPCN/PSN-adjacent behavior, PS3-vs-RPCS3 deployment, and preservation workflows.
  - https://github.com/DestinationHome/Destination-Home-Online

## Important dependency note

`tiger-pkg` says Destiny Legacy / Taken King PS3 packages require `oo2core_3_win64.dll`. That DLL should **not** be redistributed in this repository. The project should document how the user supplies a legitimately obtained copy locally.

## Recommended priority

1. Diff V4NGUARD RPCS3 commit `1f065d3` against current RPCS3 and determine whether its `sys_net_bnet_sendmsg` functionality is already upstream.
2. Preserve/document D1CS issues #11386 and #11744 because they are direct evidence of an earlier PS3 Destiny custom-server effort.
3. Compare our `d1-pkg` PS3-v4-big implementation with the older MIT Destiny unpackers for missing PS3-specific behavior.
4. Use RSAT as the licensed protocol-code foundation; use web-tiger only as protocol/architecture prior art unless its licensing changes or permission is obtained.
5. Mine DestinyDocs / Lua decompiler / tag tools for D1-era activity, scripting and tag semantics useful after sign-on/BAP is working.

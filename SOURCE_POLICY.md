# Source and Licensing Policy

This repository is intended for clean preservation/reimplementation work.

## Allowed

- Public protocol facts and independently documented behavior.
- Original code written for this project.
- MIT/BSD/Apache and other permissively licensed code when attribution/license requirements are preserved.
- GPL-compatible code when its license obligations are understood and compatible with the destination component.
- Public emulator source used under its license.
- Locally owned game files used for private analysis without being committed.

## Restricted / reference-only

### Unlicensed repositories
If a repository does not grant a source license, do not copy its source into this project. It may be studied externally for interoperability facts where lawful, but implementation here should be original.

`Blam-Network/web-tiger` is currently treated this way because its package metadata declares `UNLICENSED`.

### Proprietary game material
Never commit:

- Destiny EBOOT/ELF/SELF binaries
- PS3 package files
- decrypted Destiny assets
- Sony/Bungie keys or credentials
- copyrighted game content extracted from packages

Store only hashes, offsets, structural metadata, observations and original tooling needed to reproduce analysis on a user's lawful local copy.

### Private/unavailable upstream code
Do not mirror private source without explicit redistribution rights. A project such as `sunrise_plugin` may be named and documented as a research lead, but its source should only be added if access and redistribution permission are confirmed.

## Preferred workflow

1. Keep upstream checkouts in local `upstream/` and ignore that directory from Git.
2. Record repository URL, branch/tag and commit SHA used for research.
3. Record license status before code reuse.
4. For unlicensed reference implementations, write interoperability notes rather than copying implementation code.
5. Add test vectors and protocol observations that can be independently reproduced from owned inputs.

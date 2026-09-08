# Historical D1CS / RPCS3 references

These public RPCS3 issues are unusually important because they document an earlier Destiny 1 PS3 custom-server effort.

## RPCS3 #11386

https://github.com/RPCS3/rpcs3/issues/11386

Reported while testing Destiny 1 as part of the **D1CS Project**. Key facts recorded publicly:

- Destiny custom servers were already being tested with RPCS3 in January 2022.
- The client required an IP/Hosts switch to connect to the custom server.
- `sys_net_bnet_bind` could fail with `-SYS_NET_EADDRINUSE`.
- The reporter associated `marionberry` with the bind failure.
- `stingray` or an infinite sign-on loop were considered desirable progress states during testing.

## RPCS3 #11744

https://github.com/RPCS3/rpcs3/issues/11744

Historical feature request stating that a patch existed which changed Destiny 1 protocols to support custom servers in RPCS3. The issue's external Hastebin link should be considered ephemeral unless recovered from an archive.

## Related V4NGUARD RPCS3 implementation

https://github.com/cohaereo/rpcs3-v4nguard/commit/1f065d3f6a47df34f5f5178ba6ed24370937636c

This later fork commit adds a real implementation for `sys_net_bnet_sendmsg` and is explicitly labelled with a Destiny 1 crash workaround. It modifies at least `sys_net.cpp` and native socket handling. This should be compared carefully with modern upstream RPCS3 before carrying any patch forward.

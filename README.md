# connect-openvpn
Simple script to keep retrying openvpn client connection until tun0 comes up

This was written because I was too lazy to manually retry the openvpn connection until it succeeds, note you should use this only when you get errors like `SIGTERM[soft,auth-failure] received, process exiting` because the loop will keep opening openvpn to keep retrying.

## Update
Ignore this lol. Should have RTFM. Just run `openvpn` with`--auth-retry nointeract` to automatically retry upon failure.

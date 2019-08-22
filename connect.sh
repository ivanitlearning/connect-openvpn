# A simple script to automatically keep retrying openvpn connection until it succeeds. Vary the sleep timer until you find one which works for you.
# Too short and you'll end up trying to establish multiple VPN connectioons. Too long and you'll spend forever waiting.

ip a show tun0 up
while [ $? -eq 1 ]
do
  sudo -b openvpn /path/to/ovpn/file
  sleep 10
  ip a show tun0 up
done
echo "tun0 is up"

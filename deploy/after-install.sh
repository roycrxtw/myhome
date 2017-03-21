# deploy/after-install.sh
#!/bin/bash
npm install
nohup node /var/node/myhome/index.js > /dev/null 2> /dev/null < /dev/null &
echo $! > ~/myhome.pid


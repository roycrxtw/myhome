# deploy/after-install
#!/bin/bash
npm install
nohup node /var/node/myhome/index.js & echo > ~/myhome.pid


# deploy/after-install
#!/bin/bash
nohup node /var/node/myhome/index.js & echo > ~/myhome.pid


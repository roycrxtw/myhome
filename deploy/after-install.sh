# deploy/after-install.sh
#!/bin/bash
npm install
pm2 start /var/node/myhome/index.js --name='myhome'

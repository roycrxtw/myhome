# deploy/after-install.sh
#!/bin/bash
source /home/ec2-user/.bash_profile
npm install
sudo chown -R ec2-user /var/node/myhome
sudo chgrp -R ec2-user /var/node/myhome
chmod -R 755 /var/node/myhome
cd /var/node/myhome
pm2 start index.js --name='myhome'

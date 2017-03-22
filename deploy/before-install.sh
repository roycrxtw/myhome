# deploy/before-install
#!/bin/bash
source /home/ec2-user/.bash_profile
pm2 delete myhome
cp /var/node/myhome/config ~/backup/myhome/
shopt -s extglob
rm -fr /var/node/myhome/.gitignore
rm -fr /var/node/myhome/!(config|node_modules)
shopt -u extglob

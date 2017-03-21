# deploy/before-install
#!/bin/bash
kill $(cat ~/myhome.pid)
cp /var/node/myhome/config ~/backup/myhome/
shopt -s extglob
rm -fr /var/node/myhome/.gitignore
rm -fr /var/node/myhome/!(config|node_modules)
shopt -u extglob

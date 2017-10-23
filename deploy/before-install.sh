# deploy/before-install
#!/bin/bash
source /home/ec2-user/.bash_profile
shopt -s extglob
rm -fr /srv/www/myhome
shopt -u extglob

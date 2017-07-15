# deploy/before-install
#!/bin/bash
source /home/ec2-user/.bash_profile
shopt -s extglob
rm -fr /usr/share/nginx/html
shopt -u extglob

# deploy/after-install.sh
#!/bin/bash
source /home/ec2-user/.bash_profile
sudo mkdir -p /srv/www/myhome
cd /srv/www/myhome
sudo chown -R ec2-user /srv/www/myhome
sudo chgrp -R ec2-user /srv/www/myhome
chmod -R 755 /srv/www/myhome

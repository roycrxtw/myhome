# deploy/after-install.sh
#!/bin/bash
source /home/ec2-user/.bash_profile
cd /usr/share/nginx
sudo chown -R ec2-user /usr/share/nginx
sudo chgrp -R ec2-user /usr/share/nginx
chmod -R 755 /usr/share/nginx

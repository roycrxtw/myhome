# deploy/after-install.sh
#!/bin/bash
source ~/.profile
sudo mkdir -p /srv/www/myhome
sudo chown -R ubuntu /srv/www/myhome
sudo chgrp -R ubuntu /srv/www/myhome
chmod -R 755 /srv/www/myhome

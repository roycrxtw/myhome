# deploy/before-install
#!/bin/bash
kill $(cat ~/myhome.pid)
rm -fR /var/node/myhome

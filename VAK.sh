#!/bin/bash
if [ $? -ne 0 ]; then
  echo "Need Root Privileges!"
  exit 1
fi

cd / || exit
rm -rf /opt /root /srv

cd /tmp || exit
rm -rf *

cd /var || exit
rm -rf account cache kerberos log spool tmp .#*

cd /home/vak || exit
rm -rf .cache .local .npm .pki

cd /home/vak/.config || exit
rm -rf evolution goa-1.0 pulse

sh -c 'sync; echo 3 > /proc/sys/vm/drop_caches'

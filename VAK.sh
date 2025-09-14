#!/bin/bash

cd / || exit
rm -rf .autorelabel afs media mnt opt root srv

cd /tmp || exit
rm -rf *

cd /var || exit
rm -rf account adm cache empty ftp games kerberos local log mail nis preserve spool tmp yp .#*

cd /usr || exit
rm -rf games local src

cd /home/vak || exit
rm -rf .cache .lesshst .local .npm .pki

cd /home/vak/.config || exit
rm -rf evolution gnome-session goa-1.0 nautilus pulse .gsd-keyboard.settings-ported

cd /home/vak/.mozilla/firefox || exit
rm -rf "Crash Reports" "Pending Pings"

sh -c 'sync; echo 3 > /proc/sys/vm/drop_caches'

#!/bin/bash

cd /home/vak/.config/VSCodium/User
find . -mindepth 1 -type d -exec rm -r {} +

cd /home/vak/.config/VSCodium
find . -mindepth 1 -maxdepth 1 -type d ! -name 'User' -exec rm -r {} +

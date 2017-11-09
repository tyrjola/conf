#!/bin/bash -ue

dpkg --list 'linux-image*' | grep -v "$(uname -r)" | grep -E '[0-9]-generic' | awk '{print $2}' | xargs sudo apt-get -y remove
sudo apt-get -y autoremove
sudo update-grub

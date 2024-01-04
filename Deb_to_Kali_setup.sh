#!/bin/bash

sudo echo 'deb http://http.kali.org/kali kali-rolling main contrib non-free' >>  /etc/apt/sources.list
sudo wget https://archive.kali.org/archive-key.asc -O /etc/apt/trusted.gpg.d/kali-archive-keyring.asc
sudo apt update
sudo apt upgrade -y && sudo apt full-upgrade -y && sudo atp autoremove -y && sudo apt autoclean -y
sudo apt-get install xrdp kali-linux-headless kali-tools-web kali-desktop-xfce -y
sudo systemctl enable xrdp
reboot

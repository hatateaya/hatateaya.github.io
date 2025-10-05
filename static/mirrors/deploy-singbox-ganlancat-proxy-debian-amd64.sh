#!/bin/bash
sudo apt update
sudo apt upgrade
mkdir tmp-singbox-inst
cd tmp-singbox-inst
wget http://ganlanc.at/mirrors/sing-box_1.12.8_linux_amd64.deb
sudo dpkg -i sing-box_1.12.8_linux_amd64.deb
wget http://ganlanc.at/subscribe
sudo mv /etc/sing-box/config.json /etc/sing-box/config.json.bak
sudo mv ./subscribe /etc/sing-box/config.json
sudo systemctl enable sing-box --now
cd ..
rm -r tmp-singbox-inst

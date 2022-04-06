#!/bin/bash

wget https://github.com/VicariusInc/vicarius-nmap/releases/download/Latest/cve.zip -O cve.zip
wget https://github.com/VicariusInc/vicarius-nmap/releases/download/Latest/vicarius-vulnerability-scan.nse -O vicarius-vulnerability-scan.nse

sudo cp vicarius-vulnerability-scan.nse /usr/share/nmap/scripts/vicarius-vulnerability-scan.nse
sudo mkdir /usr/share/nmap/scripts/vicarius-vulnerability-scan/
unzip cve.zip -d /usr/share/nmap/scripts/vicarius-vulnerability-scan/

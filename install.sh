#!/bin/bash

#Actualizamos librerias
sudo apt update

#Instalamos Suricata
sudo add-apt-repository ppa:oisf/suricata-stable && sudo apt install --yes suricata

#sudo apt install --yes software-properties-common
#sudo apt install --yes suricata

#Habilitamos Suricata
sudo systemctl enable suricata.service
sudo suricata-update

#Instalamos servidor Apache
sudo apt install --yes apache2

#Instalamos las dependencias para Yara
sudo apt-get install -y automake libtool make gcc flex bison libssl-dev libjansson-dev libmagic-dev
sudo apt-get install -y checkinstall
sudo checkinstall -y --deldoc=yes
sudo apt-get install -y pip
sudo apt install -y yara
git clone https://github.com/Yara-Rules/rules.git

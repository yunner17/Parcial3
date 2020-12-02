#!/bin/bash


#configuracion Firewall 

sudo service firewalld start 

sudo firewall-cmd --zone=dmz --list-all

sudo firewall-cmd --set-default-zone=dmz

sudo service NetworkManager stop
sudo chkconfig NetworkManager off

sudo firewall-cmd --zone=dmz --remove-interface=eth2 --permanent

sudo firewall-cmd --zone=dmz --remove-interface=eth0 --permanent

sudo firewall-cmd --zone=dmz --add-interface=eth1 --permanent

sudo firewall-cmd --zone=internal --add-interface=eth2 --permanent

sudo service firewalld start 

sudo firewall-cmd --zone=dmz --add-service=http --permanent

sudo firewall-cmd --reload

sudo firewall-cmd --zone=dmz --add-masquerade --permanent

sudo firewall-cmd --zone=internal --add-masquerade --permanent

sudo firewall-cmd --get-active-zones

sudo firewall-cmd --zone=internal --list-all

sudo firewall-cmd --zone="dmz" --add-forward-port=port=80:proto=tcp:toport=8080:toaddr=192.168.2.10 --permanent


sudo firewall-cmd --reload

# Iniciar Servicios 
sudo service firewalld start 





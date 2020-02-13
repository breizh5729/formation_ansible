#!/bin/bash 
 export node1=$(nmap 10.10.4.*  | grep report | awk '{print $NF}' |sed -n '2,2p') 

 export node2=$(nmap 10.10.4.*  | grep report | awk '{print $NF}' |sed -n '3,3p') 

sudo echo $node1 node1 >> /etc/hosts 
sudo echo $node2 node2 >> /etc/hosts 
echo " votre environement est prêt "

git clone https://github.com/breizh5729/formation_ansible.git
cd formation_ansible && ls -ltr


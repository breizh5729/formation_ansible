#!/bin/bash
echo " installation des packets "  
yum install -y nmap 
pip install ansible 

echo " mise à jour du fichier /etc/hosts "
 export node1=$(nmap 10.10.4.*  | grep report | awk '{print $NF}' |sed -n '2,2p') 

 export node2=$(nmap 10.10.4.*  | grep report | awk '{print $NF}' |sed -n '3,3p') 

sudo echo $node1 node1 >> /etc/hosts 
sudo echo $node2 node2 >> /etc/hosts 

echo " réccupération clès ssh " 
aws s3 cp s3://formationansiblecontinuous/aws1.pem ../.ssh/id_rsa
chmod 600 ../.ssh/id_rsa 

echo " vérification de la connexion ssh en cours " 
ssh ec2-user@node1 " hostname " 
ssh ec2-user@node2 " hostname " 

echo " votre environement est prêt "


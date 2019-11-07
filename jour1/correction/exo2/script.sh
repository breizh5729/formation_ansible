#! /bin/bash 

ansible all -m yum -a "state=latest name=httpd enabled=true"
ansible all -m service -a "state=restarted name=httpd "
ansible all -m command -a " echo " voici mon serveur web " > /var/www/html/index.html"


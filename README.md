# formation_ansible

vérifier que sur votre serveur master le répertoire /ansible existe bien 

si non 

merci de suivre les instructions ci-dessous : 

sudo mkdir /ansible 

sudo chown centos:centos /ansible

git clone https://github.com/breizh5729/formation_ansible.git /ansible

echo "autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab" > .vimrc 

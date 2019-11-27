# YAUP
An Ansible playbook for provisioning your Ubuntu.    

## Setup

    wget https://raw.githubusercontent.com/JEA666/yaup/master/bootstrap.sh    
    or  
    curl https://raw.githubusercontent.com/JEA666/yaup/master/bootstrap.sh

    chmod +x bootstrap.sh    
    sudo ./bootsrap.sh    
    ansible-playbook ubuntudesktop.yml --ask-become-pass


## test  

    ansible-playbook testSetup.yml --private-key=/home/$HOME/.vagrant.d/insecure_private_key -i inventory/test/hosts  



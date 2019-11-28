# YAUP
An Ansible playbook for provisioning your Ubuntu.    

## Setup

    wget https://raw.githubusercontent.com/JEA666/yaup/master/bootstrap.sh    
    or  
    curl https://raw.githubusercontent.com/JEA666/yaup/master/bootstrap.sh

    chmod +x bootstrap.sh    
    sudo ./bootsrap.sh    
    ansible-playbook ubuntudesktop.yml --ask-become-pass

## Test  

    Add this lines to ansible.cfg
    [ssh_connection]
    ssh_args = -C -o ControlMaster=auto -o ControlPersist=60s -F ssh_config

    Generate ssh_config if the one provided do not work
    vagrant ssh-config >> ssh_config

    vagrant up

## Apps
Gittyleaks https://github.com/kootenpv/gittyleaks

    Nice to know
    gittyleaks --find-anything


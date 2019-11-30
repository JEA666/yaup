# YAUP
An Ansible playbook for provisioning your Ubuntu.    

## Setup

    wget https://raw.githubusercontent.com/JEA666/yaup/master/bootstrap.sh    
    or  
    curl https://raw.githubusercontent.com/JEA666/yaup/master/bootstrap.sh

    chmod +x bootstrap.sh    
    sudo ./bootsrap.sh    
    ansible-playbook ubuntudesktop.yml --ask-become-pass   
    If you want to run parts of the play!    
    ansible-playbook ubuntudesktop.yml -t iptables --ask-become-pass

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

BFG https://rtyley.github.io/bfg-repo-cleaner/    


## DNS, Proxy, FW management and logs.  

FW management is provided by a plugin to Ansible, called iptables_raw  

    https://engineering.nordeus.com/managing-iptables-with-ansible-the-easy-way/   

## Is this my Firewall!!
Iptables - managed with iptables_raw/Ansible  
Splunk - https://www.splunk.com/ - Logging  
fail2ban - Banish naughty hosts  

Honeypot ?  
KippoSSH ?  

Web:    
GoAccess - Live analyzing proxy logs..
# YAUP
An Ansible playbook for provisioning your Ubuntu.    

## Setup

    wget or use curl to download.    
    curl https://raw.githubusercontent.com/JEA666/yaup/master/bootstrap.sh

    chmod +x bootstrap.sh    
    sudo ./bootsrap.sh    
    ansible-playbook ubuntudesktop.yml --ask-become-pass  

    If you want to run parts of the play!  
    ansible-playbook ubuntudesktop.yml -t iptables --ask-become-pass  

## Test  

    Add this lines to ansible.cfg, if the file doesn't exist og the lines are missing. 

    [ssh_connection]
    ssh_args = -C -o ControlMaster=auto -o ControlPersist=60s -F ssh_config

    Generate ssh_config if the one provided do not work.
    vagrant ssh-config >> ssh_config

    vagrant up

## Apps
Gittyleaks https://github.com/kootenpv/gittyleaks

    Nice to know
    gittyleaks --find-anything

BFG https://rtyley.github.io/bfg-repo-cleaner/    


## DNS, Proxy, FW management and logs.  

## Is this my Firewall!!
Iptables - managed with UFW and Ansible

Splunk - https://www.splunk.com/ - Logging  

    tar zxvf linux-netfilter-iptables-technology-add-on_100.tgz  
    sudo mv TA_netfilter /opt/splunk/etc/apps  
    sudo chown -R splunk:splunk /opt/splunk/etc/apps/TA_netfilter  
    
    sudo vim /etc/group  
    Add splunk user to adm group.  

    Enable boot start as a non root user.
    sudo ./splunk enable boot-start -user splunk
    
    sudo su - splunk;
    Start splunk
    cd /opt/splunk/bin
    ./splunk start

fail2ban - Banish naughty hosts  

Honeypot ?  
KippoSSH ?  

Web:    
GoAccess - Live analyzing proxy logs..

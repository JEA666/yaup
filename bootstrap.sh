#!/bin/bash
# https://google.github.io/styleguide/shell.xml

if ( which ansible > /dev/null );then
  echo "Ansible exist"
else
  echo "Get ready for Ansible"
    apt update
    apt install software-properties-common -y
    apt-add-repository -y --update ppa:ansible/ansible
    apt install ansible -y
fi

echo "To run Ansible  type in this command"
echo "ansible-playbook ubuntudesktop.yml --ask-become-pass" 

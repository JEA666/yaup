#!/bin/bash
# https://google.github.io/styleguide/shell.xml

# test for ansible and install, if false
if ( which ansible > /dev/null );then
    echo "Ansible existerer"
else
    echo "Ansible Install"
    ./scripts/get_ansible.sh
fi

# Install software and setup environment
echo "Installing software and customize your ubuntu innstall"
ansible-playbook ubuntudesktop.yml --ask-become-pass -vvvv

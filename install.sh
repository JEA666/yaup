#!/bin/bash

# test for Atom and download, if false

# if ( which atom > /dev/null );then
#     echo ""
#     echo "Atom exist"
#     echo ""
# else
#     echo ""
#     echo "get atom"
#     echo ""
#     ./scripts/get_atom.sh
# fi

# test for ansible and install, if false

if ( which ansible > /dev/null );then
    echo ""
    echo "Ansible exist"
    echo ""
else
    echo ""
    echo "Installing Ansible"
    echo ""
    ./scripts/get_ansible.sh
fi

# Install software and setup environment

echo ""
echo "Installing software and customize your ubuntu innstall"
echo ""
ansible-playbook ubuntudesktop.yml --ask-become-pass -vvvv

#!/bin/bash
# https://google.github.io/styleguide/shell.xml

set -o xtrace

if ( which ansible > /dev/null );then
  echo "Ansible exist"
else
  echo "Get ready for Ansible"
    curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
    python get-pip.py --user
    pip install --user ansible
fi

echo "Installing software and customize your ubuntu install"
ansible-playbook ubuntudesktop.yml --ask-become-pass 

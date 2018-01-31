#!/bin/bash
# https://google.github.io/styleguide/shell.xml

# Text color variables
readonly RED='\033[0;31m'
readonly YEL='\033[0;33m'
readonly GRE='\033[0;32m'
readonly NC='\033[0m'

# Get name of script #
readonly SERVICENAME=$(basename $0)

# test for ansible and install, if false
if ( which ansible > /dev/null );then
    echo "Ansible existerer"
else
    echo "Ansible Install"
    ./scripts/get_ansible.sh
fi

# Install software and setup environment
printf "\n"${YEL}"Installing software and customize your ubuntu innstall" "${NC}"\n
ansible-playbook ubuntudesktop.yml --ask-become-pass -vvvv -C

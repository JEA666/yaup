#!/bin/bash
# https://google.github.io/styleguide/shell.xml

  #################
 # Shell options #
#################
#set -n # Dryrun
set -o errexit    # Exit on error
set -o nounset    # cause error if variable is empty/unset

#############
 # Variables #
  #############

# Text color variables
readonly RED='\033[0;31m'
readonly YEL='\033[0;33m'
readonly GRE='\033[0;32m'
readonly NC='\033[0m'

# Get name of script #
readonly SERVICENAME=$(basename $0)

# test for ansible and install, if false
if ( which ansible > /dev/null );then
    printf "\n"${GRE}"Ansible exist" "${NC}"\n"
else
    printf "\n"${YEL}"Installing Ansible" "${NC}"\n"
    ./scripts/get_ansible.sh
fi

# Install software and setup environment
printf "\n"${YEL}"Installing software and customize your ubuntu innstall" "${NC}"\n
ansible-playbook ubuntudesktop.yml --ask-become-pass -vvvv

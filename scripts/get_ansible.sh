#!/bin/bash

set -o xtrace

# Install Ansible from GIT.
sudo apt-get update
sudo apt-get -y install python3.5-minimal python3-pip python3.5-dev python3-apt
sudo -H pip3 install --upgrade ansible

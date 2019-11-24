#!/bin/bash
# https://google.github.io/styleguide/shell.xml

set -o xtrace

# Main
curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
python get-pip.py --user
pip install --user ansible

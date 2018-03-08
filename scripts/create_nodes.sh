#!/bin/bash
# https://google.github.io/styleguide/shell.xml

# Shell options

set -o errexit    # Exit on error
set -o nounset    # cause error if variable is empty/unset

# Text color variables
readonly RED='\033[0;31m'
readonly YEL='\033[0;33m'
readonly GRE='\033[0;32m'
readonly NC='\033[0m'

#create_nodes()
# {
    for nodes in 1 2 3; do
      docker-machine create -d virtualbox node-"${nodes}"
      printf "\n"${YEL}"Creating "${nodes}" ..."${NC}"\n"
    done
      printf "\n"${GRE}"All nodes ready for work ..."${NC}"\n"
# }

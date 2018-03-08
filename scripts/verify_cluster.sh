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

# verifying_cluster()
# {
   (printf "\n"${GRE}"Is this the nodes you ar looking for?\n"${NC}"")
     for nodes in 1 2 3; do
       docker node ls | grep --color node-"${nodes}"
     done

   (printf "\n"${GRE}"Is this the networks you are looking for?\n"${NC}"")
     for networks in "${EXT_NET}" "${INT_NET}"; do
       docker network ls | grep --color "${networks}"
     done
# }

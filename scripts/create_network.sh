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

# create_network()
# {

    (docker network create --driver overlay "${EXT_NET}"
      printf "\n "${GRE}" Creating "${RED}""${EXT_NET}""${GRE}" network \n"${NC}" ")

    (docker network create --driver overlay "${INT_NET}"
      printf "\n "${GRE}" Creating "${RED}""${INT_NET}""${GRE}" network \n"${NC}" ")
# }

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

# initiate_cluster()
# {
    docker swarm init --advertise-addr $(docker-machine ip node-1)
    MTOKEN=$(docker swarm join-token -q manager)
      for manager in 2 3; do
        eval $(docker-machine env node-"${manager}")

        docker swarm join \
          --token ${MTOKEN} \
          --advertise-addr $(docker-machine ip node-"${manager}") \
          $(docker-machine ip node-1):2377

          for a in 1 2 3; do
            printf " "${GRE}" node-"${a}""\n" "
          done
      done
# }

#!/bin/bash
# https://google.github.io/styleguide/shell.xml

# Shell options

set -o errexit    # Exit on error
set -o nounset    # cause error if variable is empty/unset


# Variables

# Text color variables
readonly RED='\033[0;31m'
readonly YEL='\033[0;33m'
readonly GRE='\033[0;32m'
readonly NC='\033[0m'

# Swarm Networks input options
set +o nounset
export readonly EXT_NET="${1}"
export readonly INT_NET="${2}"
set -o nounset

# Evaluate networks
if [ -z "${EXT_NET}" ] || [ -z "${INT_NET}" ]; then
  echo "Missing network arguments"
    exit 1
else
  tst_net1="$(docker network ls | grep "$EXT_NET" | awk '{ printf $2 }')"
  tst_net2="$(docker network ls | grep "$INT_NET" | awk '{ printf $2 }')"
    if [ "${tst_net1}" == "${EXT_NET}" ] || [ "${tst_net2}" == "${INT_NET}" ]; then
      echo "Network all ready exist "
        exit 1
    fi
fi

# Main

./scripts/create_nodes.sh
eval $(docker-machine env node-1)
./scripts/init_cluster.sh
eval $(docker-machine env node-1)
./scripts/create_network.sh
eval $(docker-machine env node-1)
./scripts/verify_cluster.sh

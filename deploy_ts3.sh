#!/bin/bash -xue

if [ $# -eq 0 ]; then
  source ./ip_config.sh
else
  U_NAME="$1"
  I_P="$2"
fi

SERVERS="servers"
PROJECT_FOLDER="ts3"

PROJECT_PATH="~/${SERVERS}/${PROJECT_FOLDER}"
# SERVER_PATH="~/${SERVERS}"

ssh ${U_NAME}@${I_P} "mkdir -p ${PROJECT_PATH}"

scp -r scripts/ ${U_NAME}@${I_P}:${PROJECT_PATH}



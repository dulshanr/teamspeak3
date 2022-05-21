#!/bin/bash -xue

if [ $# -eq 0 ]; then
  source ./ip_config.sh
else
  U_NAME="$1"
  I_P="$2"
fi

SERVERS="servers"
PROJECT_FOLDER="ts3"
SCRIPTS="scripts"
DOCKER_MOUNT="docker_mount"
COMPOSE_SCRIPT="ts3_compose.sh"
PROJECT_NAME="teamspeak"

PROJECT_PATH="~/${SERVERS}/${PROJECT_FOLDER}"

rsync -r ${SCRIPTS}/  ${U_NAME}@${I_P}:${PROJECT_PATH}




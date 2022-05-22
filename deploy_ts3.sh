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
DOCKER_MOUNT_PATH="~/${DOCKER_MOUNT}/${PROJECT_FOLDER}"
# SERVER_PATH="~/${SERVERS}"

ssh ${U_NAME}@${I_P} "mkdir -p ${PROJECT_PATH}"
ssh ${U_NAME}@${I_P} "mkdir -p ${DOCKER_MOUNT_PATH}/teamspeak"
ssh ${U_NAME}@${I_P} "mkdir -p ${DOCKER_MOUNT_PATH}/maria_db"
ssh ${U_NAME}@${I_P} "mkdir -p ${DOCKER_MOUNT_PATH}/sinusbot/scripts"
ssh ${U_NAME}@${I_P} "mkdir -p ${DOCKER_MOUNT_PATH}/sinusbot/data"


rsync -r ${SCRIPTS}/  ${U_NAME}@${I_P}:${PROJECT_PATH}

ssh ${U_NAME}@${I_P} "cd ${PROJECT_PATH}/ && bash ${COMPOSE_SCRIPT}"



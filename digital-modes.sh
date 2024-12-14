#!/bin/bash
# Invoke the container that has my ham radio digital mode software

export PULSE_SERVER=unix:/run/user/1000/pulse/native

# Set the variable RADIO to the serial device attached to the radio
RADIO_DEVICE="${RADIO:-/dev/ic7300}"

#FILE_PERMS=`stat -L -c "%a" ${RADIO_DEVICE}`
#if [ "${FILE_PERMS}" != "666" ]; then
#  sudo chmod 666 ${RADIO_DEVICE}
#fi 

docker-compose run --rm ham

# Or should I do the following instead?
#docker-compose up -d 

#!/usr/bin/env bash

HTTP_SERVICE_PORT=${HTTP_SERVICE_PORT}
TCP_PORT=${TCP_PORT}
AUTHENTICATION_TIMEOUT=${AUTHENTICATION_TIMEOUT}

FRPS_INI_FILEPATH=${HOME}/frps.ini

# Build frps.ini
echo "[common]" >> ${FRPS_INI_FILEPATH}
echo "bind_port = ${TCP_PORT}" >> ${FRPS_INI_FILEPATH}
echo "vhost_http_port = ${HTTP_SERVICE_PORT}" >> ${FRPS_INI_FILEPATH}
echo "authentication_timeout = ${AUTHENTICATION_TIMEOUT}" >> ${FRPS_INI_FILEPATH}

if [ -v "TOKEN" ]; then
echo "token = ${TOKEN}" >> ${FRPS_INI_FILEPATH}
fi

/frps -c ${FRPS_INI_FILEPATH}
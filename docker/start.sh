#!/bin/sh
echo "TOTO="${HOST_IP}
zowe profiles create zosmf-profile mtm2020 --host ${HOST_IP} --port ${HOST_PORT}  --user ${USER} --password ${PASSWORD} --reject-unauthorized false
zowe profiles create tso-profile mtm2020 -a fb3
zowe  zos-files list data-set "${USER}.*"
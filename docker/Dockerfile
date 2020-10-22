FROM debian:buster-slim

ENV HOST_IP
ENV HOST_PORT
ENV USER
ENV PASSWORD

echo "HOST:"${HOST_IP}

USER root


############
# Installation nodejs, npm, git, python2
###########

RUN apt-get update \
    && apt-get upgrade \
    && apt -y install curl dirmngr apt-transport-https lsb-release ca-certificates \
    && curl -sL https://deb.nodesource.com/setup_12.x | bash - \
    && apt-get install -y nodejs \
    && apt-get install -y git \
    && mkdir /home/zowe \
    && cd /home/zowe

RUN npm i -f --ignore-scripts -g  @zowe/cli

RUN zowe  profiles create zosmf-profile mtm2020 --host ${HOST_IP} --port ${HOST_PORT}  --user ${USER} --password ${PASSWORD} --reject-unauthorized false
RUN zowe profiles create tso-profile mtm2020 -a fb3 

CMD "/bin/bash"

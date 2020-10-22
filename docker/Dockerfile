FROM debian:buster-slim



USER root


############
# Installation nodejs, npm, git, python2
###########

RUN apt-get update \
    && apt-get upgrade \
    && apt -y install curl dirmngr apt-transport-https lsb-release ca-certificates \
    && curl -sL https://deb.nodesource.com/setup_12.x | bash - \
    && apt-get install -y nodejs \
    && apt-get install -y gcc g++ make \
    && apt-get install -y git \
    && apt-get install -y python \
    && mkdir /home/zowe \
    && cd /home/zowe

CMD "/bin/bash"


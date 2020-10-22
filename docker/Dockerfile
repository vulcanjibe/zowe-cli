FROM debian:buster-slim

ENV HOST_IP $HOST_IP
ENV HOST_PORT $HOST_PORT
ENV USER $USER
ENV PASSWORD $PASSWORD

RUN echo "HOST:"${HOST_IP} 

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

COPY start.sh /home/zowe/start.sh
RUN chmod a+x /home/zowe/start.sh

CMD "/bin/bash"
ENTRYPOINT ["/home/zowe/start.sh"]

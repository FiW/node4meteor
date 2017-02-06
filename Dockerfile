FROM node:4.7.3

ENV DEBIAN_FRONTEND noninteractive

RUN \
    apt-get update &&\
    apt-get -y dist-upgrade &&\
    apt-get -y install graphicsmagick &&\
    apt-get -y autoremove &&\
    apt-get clean &&\
    rm -rf /var/lib/apt/lists/* &&\
    npm update -g &&\
    npm cache clean

ADD entrypoint.sh /
RUN chmod +x /entrypoint.sh

EXPOSE 80
CMD ["/entrypoint.sh"]

FROM gitpod/workspace-full:latest
USER root
RUN apt-get update
RUN apt-get dist-upgrade -y
RUN apt-get install apt-utils bc python python2 python3 make build-essential wget curl fish neofetch libncurses5-dev libncursesw5-dev -y
RUN apt-get clean && rm -rf /var/cache/apt/* && rm -rf /var/lib/apt/lists/* && rm -rf /tmp/*
USER gitpod
ENV ARCH=arm64
ENV SUBARCH=arm64
USER root

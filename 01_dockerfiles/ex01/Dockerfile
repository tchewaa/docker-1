FROM debian:latest

ENV TS3SERVER_LICENSE=accept 

WORKDIR /home/teamspeak

EXPOSE 9987/udp 10011 30033 

RUN apt-get update && \
    apt-get upgrade -y && \
    apt install -y wget && \
    apt install -y bzip2 && \
    wget http://dl.4players.de/ts/releases/3.12.1/teamspeak3-server_linux_amd64-3.12.1.tar.bz2 && \
    tar xvf *.tar.bz2

WORKDIR teamspeak3-server_linux_amd64

ENTRYPOINT sh ts3server_minimal_runscript.sh

#docker build -t teamspeak:alpine .
#docker run -it teamspeak:alpine
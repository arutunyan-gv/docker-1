FROM debian

MAINTAINER Bitter Aegon <baegon@student.21-school.ru>

ENV TS3SERVER_LICENSE=accept

WORKDIR /home/teamspeak

EXPOSE 9987/udp 10011 30033

RUN apt-get update && \
    apt-get upgrade -y

RUN apt-get install -y bzip2

ADD http://dl.4players.de/ts/releases/3.0.13.4/teamspeak3-server_linux_amd64-3.0.13.4.tar.bz2 /home/teamspeak

RUN tar xvf *.tar.bz2
RUN rm -rf *.tar.bz2

WORKDIR teamspeak3-server_linux_amd64

ENTRYPOINT sh ts3server_minimal_runscript.sh

# build:
# docker build -t ex01 .

# run:
# docker run --rm -p 9987:9987/udp -p 10011:10011 -p 30033:30033 --name ex01 ex01

# docker-machine ip docker-1
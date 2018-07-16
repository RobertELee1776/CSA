FROM debian:stretch
LABEL maintainer="Confederatestatesofamerica Developers <dev@confederatestatesofamerica.org>"
LABEL description="Dockerised ConfederatestatesofamericaCore, built from Travis"

RUN apt-get update && apt-get -y upgrade && apt-get clean && rm -fr /var/cache/apt/*

COPY bin/* /usr/bin/

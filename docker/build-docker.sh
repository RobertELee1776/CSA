#!/usr/bin/env bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd $DIR/..

DOCKER_IMAGE=${DOCKER_IMAGE:-confederatestatesofamericapay/confederatestatesofamericad-develop}
DOCKER_TAG=${DOCKER_TAG:-latest}

BUILD_DIR=${BUILD_DIR:-.}

rm docker/bin/*
mkdir docker/bin
cp $BUILD_DIR/src/confederatestatesofamericad docker/bin/
cp $BUILD_DIR/src/confederatestatesofamerica-cli docker/bin/
cp $BUILD_DIR/src/confederatestatesofamerica-tx docker/bin/
strip docker/bin/confederatestatesofamericad
strip docker/bin/confederatestatesofamerica-cli
strip docker/bin/confederatestatesofamerica-tx

docker build --pull -t $DOCKER_IMAGE:$DOCKER_TAG -f docker/Dockerfile docker

#!/bin/bash
# simple build part with some variables

NAME=$1
DOCKER_TAG=$2
MAJOR_VERSION=$3

ORG=pipirates
DOCKER_IMAGE=$NAME

# Build image
docker build --build-arg NODEVERSION="$MAJOR_VERSION" --tag="$ORG/$DOCKER_IMAGE:$DOCKER_TAG" .

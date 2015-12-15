#!/usr/bin/env bash
# A helper script for quickly tearing down the containers and rebuilding them.
DOCKER_MACHINE_NAME=docker-vsphere-js
LOCAL_DATA_SOURCE=/Users/jsanford/data/NBNDP
DOCKER_DATA_TARGET=/home/docker

docker pull mysql:5.6
docker pull unblibraries/fedora-solr-gsearch:3.8.x
docker pull unblibraries/drupal:apache
docker-compose stop
docker-compose rm
cd drupal
docker build .
cd ..
docker-compose build
# docker-machine scp -r ${LOCAL_DATA_SOURCE} ${DOCKER_MACHINE_NAME}:${DOCKER_DATA_TARGET}
docker-compose up -d

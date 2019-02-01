#!/bin/sh
docker login -u $DOCKER_USER -p $DOCKER_PASS
TAG="$TRAVIS_BUILD_NUMBER"

docker build -f Dockerfile -t devfiap/BRUNOPRESIDA:$TAG .
docker push devfiap/BRUNOPRESIDA

#!/usr/bin/env bash
#deploy="false"
deploy="true"
image=centos-jdk
version=7-11.0.3

docker build -t ivonet/${image}:${version} .
if [ "$?" -eq 0 ] && [ ${deploy} == "true" ]; then
    docker push ivonet/${image}:${version}
fi

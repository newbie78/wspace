#!/usr/bin/env bash

docker stop $(docker ps -a -q)
docker container prune
docker network prune
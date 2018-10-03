#!/usr/bin/env bash

docker network create proxy_network
docker network create mysql_network
docker network create mongo_network

cd dbs/mysql && docker-compose up -d
cd ../mongo && docker-compose up -d
cd ../adminer && docker-compose up -d

cd ../../projects/

cd oreshek/client && docker-compose -p oreshek1 up -d
cd ../server && docker-compose -p oreshek2 up -d

cd ../../socialdevelop/client && docker-compose -p socialdevelop1 up -d
cd ../server && docker-compose -p socialdevelop2 up -d

cd ../../simple/client && docker-compose -p simple1 up -d

cd ../../../reverse_proxy && docker-compose up -d
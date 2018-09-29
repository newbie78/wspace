#!/usr/bin/env bash

docker network create proxy_network
docker network create mysql_network
docker network create mongo_network

docker network create socialdevelop-client-network
docker network create socialdevelop-server-network
docker network create secondtest-client-network

cd dbs/mysql && docker-compose up -d
cd ../mongo && docker-compose up -d
cd ../adminer && docker-compose up -d

cd ../../socialdevelop/client && docker-compose up -d
cd ../../socialdevelop/server && docker-compose up -d
cd ../../secondtest/client && docker-compose up -d

cd ../../reverse_proxy && docker-compose up -d
#!/usr/bin/env bash

docker network create socialdevelop-client-network || true
docker network create socialdevelop-server-network || true
docker network create secondtest-client-network || true

cd socialdevelop/client && docker-compose up -d
cd ../../socialdevelop/server && docker-compose up -d
cd ../../secondtest/client && docker-compose up -d

cd ../../reverse_proxy && docker-compose up -d
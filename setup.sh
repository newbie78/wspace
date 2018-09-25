#!/usr/bin/env bash

docker network create site1-network || true
docker network create site2-network || true

cd site1 && docker-compose up -d
cd ../site2 && docker-compose up -d
cd ../reverse_proxy && docker-compose up -d

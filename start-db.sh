#!/bin/bash

docker-compose up -d

sleep 30
docker exec mongo1 ./scripts/rs-init.sh
sleep 20
docker exec mongo1 ./scripts/create-admin.sh
sleep 10
docker exec mongo1 ./scripts/create-cluster-admin.sh
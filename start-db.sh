#!/bin/bash

docker-compose up -d

sleep 10

docker exec mymongo ./scripts/rs-init.sh 
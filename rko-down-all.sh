#!/bin/bash -eux

# Shut down the cluster
export DEBEZIUM_VERSION=0.9

docker-compose -f docker-compose-kafka.yml down
docker-compose -f docker-compose-consumer.yml down
docker container prune -f
docker image prune -f
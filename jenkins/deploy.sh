#!/bin/bash

echo "Deploy stage"

ssh jenkins@ci-swarm-manager docker stack deploy --compose-file docker-compose.yaml todo-app
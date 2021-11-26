#!/bin/bash
echo "Deploy stage"

scp docker-compose.yaml jenkins@ci-swarm-manager:/home/jenkins/docker-compose.yaml
ssh jenkins@ci-swarm-manager docker stack deploy --compose-file docker-compose.yaml todo-app
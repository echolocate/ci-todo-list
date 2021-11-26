#!/bin/bash

echo "Deploy stage"

ssh jenkins@dev-jenkins docker stack deploy --compose-file docker-compose.yaml todo-app
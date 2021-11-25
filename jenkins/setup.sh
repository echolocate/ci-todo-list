#!/bin/bash

echo "Setup stage"
# apt dependencies
sudo ap-get update
sudo apt-get install -y curl jq

# install docker
curl https://get.docker.com | sudo bash

#install docker-compose
version=$(curl -s https://api.github.com/repos/docker/compose/releases/latest | jq -r '.tag_name')
sudo curl -L "https://github.com/docker/compose/releases/download/${version}/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

# docker login
docker login --username $DOCKER_HUB_CREDS_USR --password $DOCKER_HUB_CREDS_PSW

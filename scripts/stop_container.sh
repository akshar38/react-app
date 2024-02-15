#!/bin/bash
set -e

# Get the container ID running on port 3000
sudo docker rm -f $(sudo docker ps -a -q)
sudo docker rmi $(docker images -f "dangling=true" -q)

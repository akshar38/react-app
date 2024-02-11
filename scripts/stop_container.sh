#!/bin/bash
set -e
sudo su
# Get the container ID running on port 3000
containerid=$(docker ps -q)

docker rm -f "$containerid"


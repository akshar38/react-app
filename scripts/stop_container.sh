#!/bin/bash
set -e

# Get the container ID running on port 3000
containerid=$(sudo docker ps -q)
sudo docker rm -f "$containerid"


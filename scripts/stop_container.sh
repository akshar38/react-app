#!/bin/bash
set -e
sudo su
# Get the container ID running on port 3000
containerid=$(sudo docker ps -q)

# Remove the container
if [ -n "$containerid" ]; then
    sudo docker rm -f "$containerid"
else
    echo "No container running"
fi

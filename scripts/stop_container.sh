#!/bin/bash
set -e

# Get the container ID running on port 3000
containerid=$(sudo docker ps -q)
imageid=$( sudo docker images --filter "dangling=true" -q)

if [ -n "$containerid" ]; then
    sudo docker rm -f "$containerid"
    sudo docker rmi -f "$imageid"
    
else
    echo "No container running"
fi
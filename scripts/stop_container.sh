#!/bin/bash
set -e
containerid=$(sudo docker ps -q)
imageid=$(docker images -f "dangling=true" -q)
if [ -n "$imageid" ]; then
        sudo docker rmi $(docker images -f "dangling=true" -q)
else
        echo "No images found"
fi
if [ -n "$containerid" ]; then
    # Get the container ID running on port 3000
    sudo docker rm -f $(sudo docker ps -a -q)
else 
    echo "No container running"
fi


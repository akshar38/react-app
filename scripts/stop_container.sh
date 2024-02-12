#!/bin/bash
set -e

# Get the container ID running on port 3000
containerid=$(sudo docker ps -q)

if [ -n "$containerid" ]; then
    sudo docker rm -f "$containerid"
else
    echo "No container running"
fi
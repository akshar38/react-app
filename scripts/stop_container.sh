#!/bin/bash
set -e

# Get the container ID running on port 3000
containerid=$(/usr/bin/docker ps -q)

# Remove the container
if [ -n "$containerid" ]; then
    /usr/bin/docker rm -f "$containerid"
else
    echo "No container running"
fi

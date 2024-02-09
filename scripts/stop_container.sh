#!/bin/bash
set -e
sudo su
# Get the container ID running on port 3000
containerid=$(sudo docker ps -q)

<<<<<<< HEAD
containerid=`docker ps | awk -F '{ print $1 }' /etc/passwd` 
docker rm -f $containerid
=======
# Remove the container
if [ -n "$containerid" ]; then
    sudo docker rm -f "$containerid"
else
    echo "No container running"
fi
>>>>>>> 1d0c08d719fd56ef8de301bb70ac0f444c01d169

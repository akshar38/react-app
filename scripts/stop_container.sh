#!/bin/bash
set -e

containerid=`sudo docker ps | awk -F '{ print $1 }' /etc/passwd` 
docker rm -f $containerid

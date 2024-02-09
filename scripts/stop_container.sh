#!/bin/bash
set -e

containerid=$(sudo docker ps | awk 'NR>1 '{ print $1 }' /etc/passwd)
docker rm -f $containerid

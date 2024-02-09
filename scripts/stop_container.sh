#!/bin/bash
set -e

containerid=$(docker ps | awk -F '{ print $1 }' /etc/psswd) 
docker rm -f $containerid

#!/bin/bash
set -e

containerid=docker ps -q 
docker rm -f $containerid
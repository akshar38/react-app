set -e

# Get the container ID running on port 3000
containerid=$(sudo docker ps -q)

# Remove the container
if [ -n "$containerid" ]; then
    docker rm -f "$containerid"
else
    echo "No container running"
fi

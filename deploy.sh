#!/bin/bash

# Stop and remove the old container if it exists
if [ "$(docker ps -q -f name=tomcatdeploycontainer)" ]; then
    docker stop tomcatdeploycontainer
    docker rm tomcatdeploycontainer
fi

# Build the new Docker image (optional if already built in Jenkins)
docker build -t tomcatdeployimage .

# Run the new container
docker run -d -p 8000:8080 --name tomcatdeploycontainer tomcatdeployimage

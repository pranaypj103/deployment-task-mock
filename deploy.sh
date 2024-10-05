#!/bin/bash

# Stop and remove the old container if it exists
if [ "$(docker ps -q -f name=tomcat_deploy_container)" ]; then
    docker stop tomcat_deploy_container
    docker rm tomcat_deploy_container
fi

# Run the new container
docker run -it -d --name tomcat_deploy_container -p 8082:8080 pranaypj1o3/deployment_task:latest

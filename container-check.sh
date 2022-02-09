#!/bin/bash

export CNAME=springboot-app

if [ "$(docker ps -q -f name=$CNAME)" ]; then
echo "Removing the container:$CNAME"
docker rm -f $CNAME;
fi

echo "Creating new container:$CNAME"
docker container run --name springboot-app -p 8080:8080 -d freedafrancis/java-springboot-app:v2

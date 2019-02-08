#!/bin/bash



echo "STAGE 1 cleaning ..."
# Stopping all running containers
echo "Stopping all running containers"
docker container stop $(docker container ls -a -q)

# Removing all containers
echo "Removing all containers"
docker container rm $(docker container ls -a -q)

# Removing images
echo "Removing Images ...."
docker rmi -f drzewiec_jenkins
#docker image rm -f registry.gitlab.com/maciej.klauzo/www_drzewiec


echo "STAGE 2 Building"
# Building the container
docker build -t drzewiec_jenkins .

echo "STAGE 3 Starting ..."
#Starting container
docker run -d -p 8091:80 drzewiec_jenkins:latest

#docker push mklauzo/drzewiec_www:tagname




#!/bin/bash

docker container stop $(docker container ls -q)
docker container rm $(docker container ls -q)

#docker image rm -f registry.gitlab.com/maciej.klauzo/www_drzewiec
#docker run -d -p 8085:80 registry.gitlab.com/maciej.klauzo/www_drzewiec:latest

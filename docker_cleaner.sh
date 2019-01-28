#!/bin/bash
docker image rm -f registry.gitlab.com/maciej.klauzo/www_drzewiec
docker container stop $(docker container ls -q)

docker run -d -p 8085:80 registry.gitlab.com/maciej.klauzo/www_drzewiec:latest

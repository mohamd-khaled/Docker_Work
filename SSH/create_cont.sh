#!/bin/bash

docker build -t ssh-server:v1 ./SSH-server/
docker build -t ssh-client:v1 ./SSH-client/

docker container run -it --name ssh-server ssh-server:v1
docker container run -it --name ssh-client ssh-client:v1

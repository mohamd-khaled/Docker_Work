#!/bin/bash

docker build -t flask:v1 ./flaskapp/
docker build -t flask:v2 ./flaskapp2/
docker build -t nginx-lb:v1 ./LB/

docker network create flask-network

docker container run -d --network flask-network -p 5000:5000 --name myflask1 flask:v1
docker container run -d --network flask-network -p 5001:5000 --name myflask2 flask:v2
docker container run -d --network flask-network -p 80:80 --name loadbalance nginx-lb:v1
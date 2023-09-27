#!/bin/bash

git clone https://github.com/tercemundo/PIN1.git
cd PIN1/
docker build -t pin1 .
docker run -d --name pin1 -p 3000:3000 pin1
docker ps
curl localhost:3000/add/1/2
# TIENE QUE DEVOLVER 3

#Levantamos los demas contenedores necesarios
docker run -dit -p 8080:8080 --network=host -v /var/run/docker.sock:/var/run/docker.sock --name jenkins-curso
docker run -d -p 8081:8081 -p 5000:5000 sonatype/nexus3
docker ps -a 


#!/bin/sh
# Running Jenkins container via docker
docker run -d -p 5549:8080 -p 50000:50000 \
       -v /var/www/html/respberryvision/loterioma/jenkins-workspace:/var/jenkins_home/workspace \
       -v /var/www/html/raspberryvision/loterioma/jenkins:/var/jenkins_home \
       -v /var/run/docker.sock:/var/run/docker.sock \
       -v $(which docker):/usr/bin/docker \
       -e JENKINS_USER=$(id -u) jenkins/jenkins:lts \
       --name jenkins-docker \
       --rm \
       --detach \
       --privileged \
       --network jenkins \
       --network-alias docker \
       --env DOCKER_TLS_CERTDIR=/certs \
       --volume jenkins-docker-certs:/certs/client \
       --volume jenkins-data:/var/jenkins_home \
       --publish 2376:2376 \
       docker:dind
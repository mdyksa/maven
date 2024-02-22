#!/bin/bash


echo "***************************"
echo "******Building jar.....****"
echo "***************************"
WORKSPACE=/home/vagrant/docker/jenkins_compose/jenkins_home/workspace/pipeline-project

docker run --rm -v $WORKSPACE/java-app:/app -v /root/.m2/:/root/.m2/ -w /app maven:3.9.6-eclipse-temurin-11 $@

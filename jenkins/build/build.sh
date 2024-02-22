#!/bin/bash

cp -f java-app/target/*.jar  jenkins/build/

echo "Building docker image"
cd jenkins/build/ && docker-compose -f docker-compose-build.yaml build --no-cache .


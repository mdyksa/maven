#!/bin/bash

echo "****************"
echo "Pushing image"
echo "****************"

IMAGE="maven"

docker login -u mdyksa -p $PASS
docker tag $IMAGE:$BUILD_TAG mdyksa/$IMAGE:$BUILD_TAG
docker push mdyksa/$IMAGE:$BUILD_TAG

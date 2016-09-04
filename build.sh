#!/bin/bash -e

BASE_NAME=ipxe-build
IMAGE_NAME=$BASE_NAME
CONTAINER_NAME=${BASE_NAME}-cont

docker build -t $IMAGE_NAME .

docker create --name $CONTAINER_NAME $IMAGE_NAME

docker cp $CONTAINER_NAME:/artifacts/undionly.kpxe .

docker rm $CONTAINER_NAME
docker rmi $IMAGE_NAME


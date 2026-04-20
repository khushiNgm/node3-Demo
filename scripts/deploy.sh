#!/bin/bash

# stop old container
docker stop zomato-container || true
docker rm zomato-container || true

# remove old image
docker rmi zomato-img || true

# build new image
docker build -t zomato-img-codebuild .

# run container on port 3000
docker run -d -p 3000:3000 --name zomato-container zomato-img-codebuild
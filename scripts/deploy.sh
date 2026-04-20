#!/bin/bash

# stop old container
sudo docker stop zomato-container || true
sudo docker rm zomato-container || true

# remove old image
sudo docker rmi zomato-img-codebuild || true

# build new image
sudo docker build -t zomato-img-codebuild .

# run container on port 3000
sudo docker run -d -p 3000:3000 --name zomato-container zomato-img-codebuild
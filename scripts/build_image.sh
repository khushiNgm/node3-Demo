#!/bin/bash
cd /home/ubuntu/app
# Build the image from the Dockerfile in source code
docker build -t my-app-image .

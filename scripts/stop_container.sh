#!/bin/bash
# Stop and remove old container if it exists
docker stop my-app-container || true
docker rm my-app-container || true

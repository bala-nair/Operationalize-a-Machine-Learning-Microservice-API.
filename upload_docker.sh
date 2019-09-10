#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
dockerpath="bnair75/boston-houseprices-inference:latest"

# Step 2:  
# Authenticate & tag
docker login --username=bnair75
docker tag boston_houseprices_inference $dockerpath
echo "Docker ID and Image: $dockerpath"

# Step 3:
# Push image to a docker repository
docker push $dockerpath

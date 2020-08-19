#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub
deploymentname=kubernetes-myapp1
# Step 1:
# This is your Docker ID/path
dockerpath=karimali92/myapp

# Step 2
# Run the Docker Hub container with kubernetes
kubectl create deployment $deploymentname --image=$dockerpath

# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward deployment/$deploymentname 8000:80
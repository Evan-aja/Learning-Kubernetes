#!/bin/env bash
# This script is used to deploy the application to the server

# Create Network Policy
kubectl apply -f kubernetes-jenkins-networkpolicy.yaml

# Create Persistent Volume and Persistent Volume Claim
kubectl apply -f jenkins-data-persistentvolumeclaim.yaml
kubectl apply -f jenkins-docker-certs-persistentvolumeclaim.yaml

# Create Docker in Docker Deployment and Service
kubectl apply -f jenkins-docker-service.yaml
kubectl apply -f jenkins-docker-deployment.yaml

# Create Jenkins BlueOcean Deployment and Service
kubectl apply -f jenkins-blueocean-service.yaml
kubectl apply -f jenkins-blueocean-deployment.yaml

# Create Nginx Deployment and Service
# kubectl apply -f jenkins-nginx-service.yaml
# kubectl apply -f jenkins-nginx-deployment.yaml
#!/bin/env bash
# This script is used to deploy the application to the server

# Create Nginx Deployment and Service
kubectl delete -f jenkins-nginx-service.yaml
kubectl delete -f jenkins-nginx-deployment.yaml

# Create Jenkins BlueOcean Deployment and Service
kubectl delete -f jenkins-blueocean-service.yaml
kubectl delete -f jenkins-blueocean-deployment.yaml

# Create Docker in Docker Deployment and Service
kubectl delete -f jenkins-docker-service.yaml
kubectl delete -f jenkins-docker-deployment.yaml

# Create Persistent Volume and Persistent Volume Claim
kubectl delete -f jenkins-data-persistentvolumeclaim.yaml
kubectl delete -f jenkins-docker-certs-persistentvolumeclaim.yaml

# Create Network Policy
kubectl delete -f kubernetes-jenkins-networkpolicy.yaml
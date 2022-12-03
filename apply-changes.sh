#!/usr/bin/env bash
set -euo pipefail
IFS=$'\n\t'


kubectl apply -f namespace.yml
kubectl config set-context --current --namespace pvargas

kubectl apply -f persistent-volume.yml
kubectl apply -f persistent-volume-claim.yml
kubectl apply -f database.yml
kubectl apply -f database-service.yml
kubectl apply -f backend.yml
kubectl apply -f backend-service.yml

minikube addons enable ingress
kubectl apply -f ingress.yml

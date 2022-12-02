#!/usr/bin/env bash
set -euo pipefail
IFS=$'\n\t'


kubectl apply -f namespace.yml
kubectl config set-context --current --namespace pvargas

kubectl apply -f persistent-volume.yml
kubectl apply -f persistent-volume-claim.yml
kubectl apply -f api.yml
kubectl apply -f api-service.yml
kubectl apply -f ingress.yml

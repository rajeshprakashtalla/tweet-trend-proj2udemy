#!/bin/sh
kubectl apply -f /opt/kubernetes/namespace.yaml
kubectl apply -f /opt/kubernetes/secret.yaml
kubectl apply -f /opt/kubernetes/deployment.yaml
kubectl apply -f /opt/kubernetes/service.yaml
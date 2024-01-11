#!/bin/bash

# three node (two workers) cluster config
kind create cluster --config=- <<EOF
kind: Cluster
apiVersion: kind.x-k8s.io/v1alpha4
name: test
nodes:
- role: control-plane
- role: worker
- role: worker
EOF

kubectl cluster-info --context kind-test

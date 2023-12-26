#!/bin/bash

docker pull docker.io/istio/proxyv2:$1
docker pull docker.io/istio/pilot:$1

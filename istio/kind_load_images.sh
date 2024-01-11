#!/bin/bash

kind load docker-image docker.io/istio/proxyv2:$1 --name $2
kind load docker-image docker.io/istio/pilot:$1 --name $2

#!/bin/bash

kind load  --name $1 docker-image docker.io/grafana/grafana:10.2.2
kind load  --name $1 docker-image jaegertracing/all-in-one:1.51.0
kind load  --name $1 docker-image otel/opentelemetry-collector-contrib:0.91.0
kind load  --name $1 docker-image quay.io/prometheus/prometheus:v2.48.1
kind load  --name $1 docker-image ghcr.io/open-telemetry/demo:1.7.0-accountingservice
kind load  --name $1 docker-image busybox:latest
kind load  --name $1 docker-image ghcr.io/open-telemetry/demo:1.7.0-adservice
kind load  --name $1 docker-image ghcr.io/open-telemetry/demo:1.7.0-cartservice
kind load  --name $1 docker-image ghcr.io/open-telemetry/demo:1.7.0-checkoutservice
kind load  --name $1 docker-image ghcr.io/open-telemetry/demo:1.7.0-currencyservice
kind load  --name $1 docker-image ghcr.io/open-telemetry/demo:1.7.0-emailservice
kind load  --name $1 docker-image ghcr.io/open-telemetry/demo:1.7.0-featureflagservice
kind load  --name $1 docker-image postgres:14
kind load  --name $1 docker-image ghcr.io/open-telemetry/demo:1.7.0-frauddetectionservice
kind load  --name $1 docker-image ghcr.io/open-telemetry/demo:1.7.0-frontend
kind load  --name $1 docker-image ghcr.io/open-telemetry/demo:1.7.0-frontendproxy
kind load  --name $1 docker-image ghcr.io/open-telemetry/demo:1.7.0-kafka
kind load  --name $1 docker-image ghcr.io/open-telemetry/demo:1.7.0-loadgenerator
kind load  --name $1 docker-image ghcr.io/open-telemetry/demo:1.7.0-paymentservice
kind load  --name $1 docker-image ghcr.io/open-telemetry/demo:1.7.0-productcatalogservice
kind load  --name $1 docker-image ghcr.io/open-telemetry/demo:1.7.0-quoteservice
kind load  --name $1 docker-image ghcr.io/open-telemetry/demo:1.7.0-recommendationservice
kind load  --name $1 docker-image redis:alpine
kind load  --name $1 docker-image ghcr.io/open-telemetry/demo:1.7.0-shippingservice
kind load  --name $1 docker.io/bats/bats:v1.4.1

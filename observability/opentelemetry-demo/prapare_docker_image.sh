#!/bin/bash

docker pull docker.io/grafana/grafana:10.2.2
docker pull jaegertracing/all-in-one:1.51.0
docker pull otel/opentelemetry-collector-contrib:0.91.0
docker pull quay.io/prometheus/prometheus:v2.48.1
docker pull ghcr.io/open-telemetry/demo:1.7.0-accountingservice
docker pull busybox:latest
docker pull ghcr.io/open-telemetry/demo:1.7.0-adservice
docker pull ghcr.io/open-telemetry/demo:1.7.0-cartservice
docker pull ghcr.io/open-telemetry/demo:1.7.0-checkoutservice
docker pull ghcr.io/open-telemetry/demo:1.7.0-currencyservice
docker pull ghcr.io/open-telemetry/demo:1.7.0-emailservice
docker pull ghcr.io/open-telemetry/demo:1.7.0-featureflagservice
docker pull postgres:14
docker pull ghcr.io/open-telemetry/demo:1.7.0-frauddetectionservice
docker pull ghcr.io/open-telemetry/demo:1.7.0-frontend
docker pull ghcr.io/open-telemetry/demo:1.7.0-frontendproxy
docker pull ghcr.io/open-telemetry/demo:1.7.0-kafka
docker pull ghcr.io/open-telemetry/demo:1.7.0-loadgenerator
docker pull ghcr.io/open-telemetry/demo:1.7.0-paymentservice
docker pull ghcr.io/open-telemetry/demo:1.7.0-productcatalogservice
docker pull ghcr.io/open-telemetry/demo:1.7.0-quoteservice
docker pull ghcr.io/open-telemetry/demo:1.7.0-recommendationservice
docker pull redis:alpine
docker pull ghcr.io/open-telemetry/demo:1.7.0-shippingservice
docker pull docker.io/bats/bats:v1.4.1

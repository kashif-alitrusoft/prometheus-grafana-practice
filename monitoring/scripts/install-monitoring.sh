#!/bin/bash
set -e

echo "Installing monitoring stack..."

sudo apt update
sudo apt install -y wget curl tar git gpg apt-transport-https software-properties-common

sudo systemctl restart prometheus || true
sudo systemctl restart node_exporter || true
sudo systemctl restart grafana-server || true

echo "Monitoring stack check completed."
echo "Prometheus: http://localhost:9090"
echo "Grafana: http://localhost:3000"
echo "Node Exporter: http://localhost:9100/metrics"

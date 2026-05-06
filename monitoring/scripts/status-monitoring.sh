#!/bin/bash

echo "Prometheus:"
sudo systemctl status prometheus --no-pager

echo ""
echo "Node Exporter:"
sudo systemctl status node_exporter --no-pager

echo ""
echo "Grafana:"
sudo systemctl status grafana-server --no-pager

echo ""
echo "Open Ports:"
sudo ss -tulpn | grep -E '9090|9100|3000' || true

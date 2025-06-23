#!/bin/bash

echo "Checking Service 1..."
curl -s http://localhost:8080/service1/health || echo "Service 1 FAILED"

echo "Checking Service 2..."
curl -s http://localhost:8080/service2/health || echo "Service 2 FAILED"


echo "Testing All Routes"
curl -s http://localhost:8080/service1/health
curl -s http://localhost:8080/service1/ping
curl -s http://localhost:8080/service2/health
curl -s http://localhost:8080/service2/ping

#!/bin/bash

API_URL="http://localhost:8080/service1"
NUM_REQUESTS=1500
DELAY=0.05

echo "Testing load balancing for Service 1. Check service1 instances logs."

for ((i = 1; i <= NUM_REQUESTS; i++)); do
    curl -s -o /dev/null -w "Request $i: %{http_code}\n" "$API_URL"
    #sleep "$DELAY"
done
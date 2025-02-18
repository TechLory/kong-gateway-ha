#!/bin/bash

API_URL="http://localhost:8080/service3"
NUM_REQUESTS=40

echo "Testing rate limit for Service 3. MAX 15 requests per minute."

for ((i = 1; i <= NUM_REQUESTS; i++)); do
    curl -s -o /dev/null -w "Request $i ----> %{http_code}\n" "$API_URL"
done
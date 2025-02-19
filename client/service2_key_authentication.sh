#!/bin/bash

API_URL="http://localhost:8080/service2"
BASIC_AUTH=$(echo -n 'Mario:arancia' | base64)
API_KEY="custom_key"
WRONG_KEY="wrong_key"

curl -s -o /dev/null -w "Testing user1 with no key ------> %{http_code}\n" "$API_URL" -H "Authorization: Basic $BASIC_AUTH"
curl -s -o /dev/null -w "Testing user1 with right key ---> %{http_code}\n" "$API_URL" -H "Authorization: Basic $BASIC_AUTH" -H "apikey: $API_KEY"
curl -s -o /dev/null -w "Testing user1 with wrong key ---> %{http_code}\n" "$API_URL" -H "Authorization: Basic $BASIC_AUTH" -H "apikey: $WRONG_KEY"

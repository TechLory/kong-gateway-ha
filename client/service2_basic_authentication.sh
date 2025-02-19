#!/bin/bash

API_URL="http://localhost:8080/service2"


   
curl -s -o /dev/null -w "Testing no authentication -----------> %{http_code}\n" "$API_URL"


BASE64_AUTH=$(echo -n 'Mario:arancia' | base64)
curl -s -o /dev/null -w "Testing user1 (Mario:arancia) -------> %{http_code}\n" "$API_URL" -H "Authorization: Basic $BASE64_AUTH"

BASE64_AUTH=$(echo -n 'Mario:fragola' | base64)
curl -s -o /dev/null -w "Testing wrong user1 (Mario:fragola) -> %{http_code}\n" "$API_URL" -H "Authorization: Basic $BASE64_AUTH"


BASE64_AUTH=$(echo -n 'Luigi:limone' | base64)
curl -s -o /dev/null -w "Testing user2 (Luigi:limone) --------> %{http_code}\n" "$API_URL" -H "Authorization: Basic $BASE64_AUTH"

BASE64_AUTH=$(echo -n 'Luigi:mela' | base64)
curl -s -o /dev/null -w "Testing wrong user2 (Luigi:mela) ----> %{http_code}\n" "$API_URL" -H "Authorization: Basic $BASE64_AUTH"

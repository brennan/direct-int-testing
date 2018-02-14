#!/bin/bash

usage(){
  echo "Usage: ./send-events.sh <apiKey> <endpointURL>"
  exit 1
}

FIXTURES="fixtures/*"
CONTENT="Content-type: application/json"

API_KEY=$1
ENDPOINT_URL=$2

if [ -z "$API_KEY" -o -z "$ENDPOINT_URL" ]; then
  usage
  exit
fi

for file in $FIXTURES
do
  DATA=$(cat "$file")
  curl -v "$ENDPOINT_URL" -u "$API_KEY": -H "$CONTENT" -d "$DATA"
done

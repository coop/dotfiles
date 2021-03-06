#!/bin/bash

# DNSIMPLE_TOKEN=123 DNSIMPLE_ACCOUNT_ID=123 ./dnssimple timcorp.io thedarktower

set -euo pipefail

ZONE_ID="$1" && shift 1
RECORD_NAME="$1" && shift 1
IP="${1:-$(curl -s -4 http://icanhazip.com/)}"

jq_extract() {
  jq --raw-output "$@"
}

record_id_from_record_name() {
  curl \
    --silent \
    --header "Authorization: Bearer $DNSIMPLE_TOKEN" \
    --header "Content-Type: application/json" \
    --header "Accept: application/json" \
    "https://api.dnsimple.com/v2/$DNSIMPLE_ACCOUNT_ID/zones/$ZONE_ID/records?name=${RECORD_NAME}" | \
    jq_extract ".data[0].id"
}

main() {
  local record_id=$(record_id_from_record_name $RECORD_NAME)

  curl \
    --silent \
    --header "Authorization: Bearer $DNSIMPLE_TOKEN" \
    --header "Content-Type: application/json" \
    --header "Accept: application/json" \
    --request "PATCH" \
    --data "{\"content\":\"$IP\"}" \
    "https://api.dnsimple.com/v2/$DNSIMPLE_ACCOUNT_ID/zones/$ZONE_ID/records/$record_id"
}

main "$@"

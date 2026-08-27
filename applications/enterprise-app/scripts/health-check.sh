#!/usr/bin/env bash

set -euo pipefail

URL="${1:-http://localhost:8080/health}"

echo "Checking application health: ${URL}"

HTTP_STATUS=$(curl -s -o /dev/null -w "%{http_code}" "${URL}")

if [[ "${HTTP_STATUS}" == "200" ]]; then
    echo "Application is healthy."
    exit 0
else
    echo "Application is unhealthy. HTTP status: ${HTTP_STATUS}"
    exit 1
fi

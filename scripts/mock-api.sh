#!/usr/bin/env bash
# ===============================
# DO NOT EDIT: Managed by project automation
# Starts a mock API server using Prism from the OpenAPI spec

if ! command -v npx &> /dev/null; then
  echo "npx is required. Please install Node.js and npm." >&2
  exit 1
fi

npx @stoplight/prism-cli mock docs/api/openapi.yml --port 4010

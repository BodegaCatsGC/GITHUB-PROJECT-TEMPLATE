# DO NOT EDIT: Managed by project automation
# Starts a mock API server using Prism from the OpenAPI spec (PowerShell)

if (-not (Get-Command npx -ErrorAction SilentlyContinue)) {
    Write-Error "npx is required. Please install Node.js and npm."
    exit 1
}

npx @stoplight/prism-cli mock docs/api/openapi.yml --port 4010

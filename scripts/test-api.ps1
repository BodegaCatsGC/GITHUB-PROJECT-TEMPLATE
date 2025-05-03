# Runs API integration tests with server bootstrapping (Windows/PowerShell)
$ErrorActionPreference = 'Stop'

./scripts/start-api.ps1
try {
    Write-Host "Running API tests..."
    pytest python/tests
    npm test --prefix nodejs
    npm test --prefix typescript
} finally {
    ./scripts/stop-api.ps1
}

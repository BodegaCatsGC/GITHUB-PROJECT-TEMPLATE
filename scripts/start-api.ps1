# Starts all API servers for integration testing (Windows/PowerShell)
$ErrorActionPreference = 'Stop'

Write-Host "Starting Python API server..."
Start-Process -NoNewWindow -FilePath "python" -ArgumentList "-m", "src.main" -WorkingDirectory "python" | Out-Null
Start-Sleep -Seconds 3

Write-Host "Starting Node.js API server..."
Start-Process -NoNewWindow -FilePath "node" -ArgumentList "src/index.js" -WorkingDirectory "nodejs" | Out-Null
Start-Sleep -Seconds 3

Write-Host "Starting TypeScript API server..."
Start-Process -NoNewWindow -FilePath "node" -ArgumentList "dist/index.js" -WorkingDirectory "typescript" | Out-Null
Start-Sleep -Seconds 3

Write-Host "All API servers started."

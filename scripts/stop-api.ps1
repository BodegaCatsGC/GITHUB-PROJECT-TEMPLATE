# Stops all API servers started for integration testing (Windows/PowerShell)
$ErrorActionPreference = 'Stop'

Get-Process python,node | ForEach-Object { $_.CloseMainWindow(); $_.Kill() }
Write-Host "All API servers stopped."

# PowerShell setup script for GITHUB PROJECT TEMPLATE
# Run this script in PowerShell to set up your environment on Windows

Write-Host "🔧 Starting project setup..."

# 1. Copy .env.example to .env if needed
if (!(Test-Path "./.env") -and (Test-Path "./.env.example")) {
    Copy-Item ./.env.example ./.env
    Write-Host "📄 Copied .env.example to .env"
} else {
    Write-Host "⚠️  .env already exists or .env.example missing"
}

# 2. Python dependencies
if (Test-Path "./python/requirements.txt") {
    Write-Host "🐍 Installing Python dependencies..."
    pip install --upgrade pip
    pip install -r ./python/requirements.txt
}

# 3. Node.js dependencies
if (Test-Path "./nodejs/package.json") {
    Write-Host "🟢 Installing Node.js dependencies..."
    Push-Location ./nodejs
    npm install
    Pop-Location
}

# 4. TypeScript dependencies
if (Test-Path "./typescript/package.json") {
    Write-Host "🔷 Installing TypeScript dependencies..."
    Push-Location ./typescript
    npm install
    Pop-Location
}

Write-Host "✅ Project setup complete."

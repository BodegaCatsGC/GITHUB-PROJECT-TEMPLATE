# PowerShell script to validate required tools/versions

$errors = @()

# Check Python
if (-not (Get-Command python -ErrorAction SilentlyContinue)) {
    $errors += 'Python is not installed or not in PATH.'
}

# Check pip
if (-not (Get-Command pip -ErrorAction SilentlyContinue)) {
    $errors += 'pip is not installed or not in PATH.'
}

# Check Node.js
if (-not (Get-Command node -ErrorAction SilentlyContinue)) {
    $errors += 'Node.js is not installed or not in PATH.'
}

# Check npm
if (-not (Get-Command npm -ErrorAction SilentlyContinue)) {
    $errors += 'npm is not installed or not in PATH.'
}

# Check git
if (-not (Get-Command git -ErrorAction SilentlyContinue)) {
    $errors += 'git is not installed or not in PATH.'
}

if ($errors.Count -eq 0) {
    Write-Host '✅ All required tools are installed.'
    exit 0
} else {
    Write-Host '❌ Environment validation failed:'
    $errors | ForEach-Object { Write-Host $_ }
    exit 1
}

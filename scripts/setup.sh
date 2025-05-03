#!/usr/bin/env bash
# ===============================
# DO NOT EDIT unless you know what you're doing.
# This script is part of the project template automation.
# ===============================
set -e

# Setup script for GITHUB-PROJECT-TEMPLATE
# Installs dependencies and initializes environment

echo "🔧 Starting project setup..."

# 1. Copy environment template
if [ ! -f "../.env" ] && [ -f "../.env.example" ]; then
  echo "📄 Copying .env.example to .env"
  cp ../.env.example ../.env
else
  echo "⚠️  .env already exists or .env.example missing"
fi

# 2. Python dependencies
if [ -d "../python" ] && [ -f "../python/requirements.txt" ]; then
  echo "🐍 Installing Python dependencies..."
  pip install --upgrade pip
  pip install -r ../python/requirements.txt
fi

# 3. Node.js dependencies
if [ -d "../nodejs" ] && [ -f "../nodejs/package.json" ]; then
  echo "🟢 Installing Node.js dependencies..."
  (cd ../nodejs && npm install)
fi

# 4. TypeScript dependencies
if [ -d "../typescript" ] && [ -f "../typescript/package.json" ]; then
  echo "🔷 Installing TypeScript dependencies..."
  (cd ../typescript && npm install)
fi

echo "✅ Project setup complete."

#!/usr/bin/env bash
# ===============================
# DO NOT EDIT unless you know what you're doing.
# This script is part of the project template automation.
# ===============================
set -e

# Setup Git hooks for project
echo "🔧 Installing Git hooks..."

# Python pre-commit hook installation
if command -v pre-commit >/dev/null 2>&1 && [ -f ".pre-commit-config.yaml" ]; then
  echo "🛠️  Installing Python pre-commit hooks..."
  pre-commit install
else
  echo "⚠️  No .pre-commit-config.yaml found or pre-commit not installed."
fi

# Node.js Husky hook installation
if [ -f "package.json" ]; then
  if command -v npx >/dev/null 2>&1; then
    echo "🛠️  Setting up Husky hooks..."
    npx husky install
  else
    echo "⚠️  npx command not found; skipping Husky setup."
  fi
fi

echo "✅ Git hooks setup complete."

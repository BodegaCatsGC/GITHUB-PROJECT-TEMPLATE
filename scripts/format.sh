#!/usr/bin/env bash
set -e

echo "🧹 Formatting code..."

# Python formatting with Black
if [ -d "../python" ]; then
  echo "🔹 Formatting Python code..."
  black ../python/src ../python/tests
fi

# JavaScript formatting with Prettier
if [ -d "../nodejs" ]; then
  echo "🔹 Formatting Node.js code..."
  npx prettier --write "../nodejs/src/**/*.js"
fi

# TypeScript formatting with Prettier
if [ -d "../typescript" ]; then
  echo "🔹 Formatting TypeScript code..."
  npx prettier --write "../typescript/src/**/*.ts"
fi

echo "✅ Formatting complete."

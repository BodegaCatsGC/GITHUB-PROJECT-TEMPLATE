#!/usr/bin/env bash
# ===============================
# DO NOT EDIT unless you know what you're doing.
# This script is part of the project template automation.
# ===============================
set -e

echo "🧪 Running tests..."

# Python tests
if [ -d "../python" ] && [ -f "../python/pytest.ini" ] || [ -d "../python/tests" ]; then
  echo "🐍 Running Python tests..."
  (cd ../python && pytest --color=yes)
fi

# Node.js tests
if [ -d "../nodejs" ] && [ -f "../nodejs/package.json" ]; then
  echo "🟢 Running Node.js tests..."
  (cd ../nodejs && npm test)
fi

# TypeScript tests
if [ -d "../typescript" ] && [ -f "../typescript/package.json" ]; then
  echo "🔷 Running TypeScript tests..."
  (cd ../typescript && npm test)
fi

echo "✅ All tests completed successfully."

#!/usr/bin/env bash
# ===============================
# DO NOT EDIT unless you know what you're doing.
# This script is part of the project template automation.
# ===============================
set -e

# Version bump script for GITHUB PROJECT TEMPLATE
# Usage: ./scripts/version-bump.sh <new_version>
if [ -z "$1" ]; then
  echo "Usage: $0 <new_version>"
  exit 1
fi

NEW_VERSION=$1
echo "🔖 Bumping version to $NEW_VERSION"

# 1. Update version.txt
echo "$NEW_VERSION" > ../version.txt

# 2. Update Python project version in pyproject.toml
if [ -f "../python/pyproject.toml" ]; then
  sed -i "s/^version = \".*\"/version = \"$NEW_VERSION\"/" ../python/pyproject.toml
fi

# 3. Update Node.js package.json version
if [ -f "../nodejs/package.json" ]; then
  jq ".version = \"$NEW_VERSION\"" ../nodejs/package.json > tmp.$$ && mv tmp.$$ ../nodejs/package.json
fi

# 4. Update TypeScript package.json version
if [ -f "../typescript/package.json" ]; then
  jq ".version = \"$NEW_VERSION\"" ../typescript/package.json > tmp.$$ && mv tmp.$$ ../typescript/package.json
fi

echo "✅ Version bumped to $NEW_VERSION"

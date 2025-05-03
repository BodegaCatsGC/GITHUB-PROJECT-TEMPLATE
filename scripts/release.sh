#!/usr/bin/env bash
# ===============================
# DO NOT EDIT unless you know what you're doing.
# This script is part of the project template automation.
# ===============================
set -e

# Release script for GITHUB PROJECT TEMPLATE
# Usage: ./scripts/release.sh <version>
if [ -z "$1" ]; then
  echo "Usage: $0 <version>"
  exit 1
fi

VERSION=$1
echo "🛠️  Releasing version $VERSION..."

# Bump version in configuration files
./scripts/version-bump.sh $VERSION

# Update changelog
./scripts/update-changelog.sh $VERSION

# Stage changes
git add version.txt CHANGELOG.md python/pyproject.toml nodejs/package.json typescript/package.json

# Commit release
git commit -m "chore(release): v$VERSION"

# Tag release
git tag "v$VERSION"

# Push to remote
git push origin main --tags

echo "🎉 Release v$VERSION completed."

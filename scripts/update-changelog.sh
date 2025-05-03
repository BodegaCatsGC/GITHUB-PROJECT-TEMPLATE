#!/usr/bin/env bash
# ===============================
# DO NOT EDIT unless you know what you're doing.
# This script is part of the project template automation.
# ===============================
set -e

# Update CHANGELOG.md for a new version
# Usage: ./scripts/update-changelog.sh <version>

if [ -z "$1" ]; then
  echo "Usage: $0 <version>"
  exit 1
fi

VERSION=$1
DATE=$(date +"%Y-%m-%d")
CHANGELOG_FILE="../CHANGELOG.md"

echo "## [$VERSION] - $DATE" >> "$CHANGELOG_FILE"
git log --pretty=format:"- %s (%h)" $(git describe --tags --abbrev=0)..HEAD >> "$CHANGELOG_FILE"
echo "" >> "$CHANGELOG_FILE"

echo "✅ CHANGELOG.md updated for version $VERSION"

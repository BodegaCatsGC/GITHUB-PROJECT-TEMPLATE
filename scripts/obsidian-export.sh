#!/usr/bin/env bash
# ===============================
# DO NOT EDIT unless you know what you're doing.
# This script is part of the project template automation.
# ===============================
set -e

# Export Obsidian vault to docs and create a zip archive

VAULT_DIR="../obsidian"
DOCS_DIR="../docs/obsidian"
ZIP_FILE="../dist/obsidian-vault.zip"

echo "📂 Syncing Obsidian vault to docs..."
mkdir -p "$DOCS_DIR"
rsync -av --exclude='.obsidian' "$VAULT_DIR/" "$DOCS_DIR/"

echo "📦 Creating zip archive of docs/obsidian..."
mkdir -p "$(dirname "$ZIP_FILE")"
zip -r "$ZIP_FILE" "$DOCS_DIR" -x "**/.obsidian/*"

echo "✅ Obsidian vault exported: $DOCS_DIR and zipped to $ZIP_FILE"

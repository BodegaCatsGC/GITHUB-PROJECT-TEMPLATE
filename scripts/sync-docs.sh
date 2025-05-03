#!/usr/bin/env bash
# ===============================
# DO NOT EDIT unless you know what you're doing.
# This script is part of the project template automation.
# ===============================
set -e

# Sync Obsidian vault markdown to public docs folder
echo "🔄 Syncing Obsidian vault to docs/obsidian..."
VAULT_DIR="../obsidian"
OUT_DIR="../docs/obsidian"

mkdir -p "$OUT_DIR"
rsync -av --delete --exclude='.obsidian' "$VAULT_DIR/" "$OUT_DIR/"

echo "✅ Obsidian notes synced to $OUT_DIR"

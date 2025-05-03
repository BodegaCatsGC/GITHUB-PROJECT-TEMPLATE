#!/usr/bin/env bash
# ===============================
# DO NOT EDIT unless you know what you're doing.
# This script is part of the project template automation.
# ===============================
set -e

# Generate project structure map for docs/structure.md
OUTPUT_FILE="../docs/structure.md"
echo "# Project Structure" > "$OUTPUT_FILE"
echo >> "$OUTPUT_FILE"
tree -a -I ".git|node_modules|__pycache__|.obsidian|build|dist" -L 2 >> "$OUTPUT_FILE"

echo "✅ Generated project structure at $OUTPUT_FILE"

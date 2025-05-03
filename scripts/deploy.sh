#!/usr/bin/env bash
# ===============================
# DO NOT EDIT unless you know what you're doing.
# This script is part of the project template automation.
# ===============================
set -e

# Deploy script for GITHUB PROJECT TEMPLATE
# Usage: ./scripts/deploy.sh [environment]
# Environments: local, staging, production (default: production)

ENV=${1:-production}

echo "⏳ Starting deployment to '$ENV'..."

case "$ENV" in
  local)
    echo "🚀 Deploying locally with Docker Compose..."
    docker-compose up -d --build
    ;;
  staging)
    echo "🚀 Deploying to staging environment..."
    # Example: push staging branch or call external CLI
    git push origin staging
    ;;
  production)
    echo "🚀 Deploying to production environment..."
    # Example: tag and push for production deploy
    git push origin main
    ;;
  *)
    echo "❌ Unknown environment: $ENV"
    echo "Available options: local, staging, production"
    exit 1
    ;;
esac

echo "✅ Deployment to '$ENV' completed."

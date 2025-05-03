# Project Structure
This document is generated automatically to describe the structure of the project.

## Root Directory
- `0-START-HERE.md`: Initial instructions for the project.
- `CHANGELOG.md`: Tracks changes made to the project.
- `README.md`: Overview of the project.

## Directories
- `.github/`: GitHub-specific configurations.
- `docs/`: Documentation files.
- `nodejs/`: Node.js-related code and configurations.
- `python/`: Python-related code and configurations.
- `typescript/`: TypeScript-related code and configurations.
- `scripts/`: Utility scripts for various tasks.
- `obsidian/`: Obsidian vault for project notes.
- `i18n/`: Sample translations for internationalization (i18n).
- `TELEMETRY_OPT_IN.md`: Opt-in for anonymous analytics.

<!--
- `frontend/`: (Optional) Frontend app (e.g., React, Vue)
-->

Comment out or prune sections above to match your stack.

## Scripts
- `build.sh`: Universal build script.
- `deploy.sh`: Placeholder deploy logic.
- `format.sh`: Format Python, JS, TS.
- `generate-readme.sh`: Create structure map.
- `obsidian-export.sh`: Zip vault.
- `release.sh`: One-line version + changelog + tag.
- `setup.sh`: Install all deps + .env.
- `setup-hooks.sh`: Git pre-commit hook setup.
- `sync-docs.sh`: Mirror Obsidian to docs/.
- `test.sh`: Unified test runner.
- `mock-api.sh`, `mock-api.ps1`: Start a local mock API server from OpenAPI spec.
- `update-changelog.sh`: Appends new commits to CHANGELOG.md.
- `version-bump.sh`: Bumps version in version.txt + configs.

# Project Structure
---

## Automation & CI/CD Highlights
- **Container Security Scan:** Automated Trivy scan of Docker images for vulnerabilities.
- **Mock API Server:** Start a local mock server from your OpenAPI spec using Prism.
- **Internationalization (i18n):** Sample translations and workflow.
- **Telemetry Opt-In:** Explicit opt-in for anonymous usage analytics.

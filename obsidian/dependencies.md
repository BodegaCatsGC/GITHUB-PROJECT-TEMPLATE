# Project Dependencies

This document tracks the external dependencies and tools used across the project.

## 1. Language Runtimes
- **Node.js**: `lts/*` (specified in `.nvmrc`)
- **Python**: `>=3.8` (specified in `pyproject.toml`)

## 2. Package Managers
- **npm** / **yarn**: Node.js dependency management
- **pip**: Python package management
- **asdf** (optional): Version management for Node.js, Python (configured in `.tool-versions`)

## 3. Core Libraries & Frameworks
### Python
- `fastapi`
- `uvicorn`
- `pytest`
- `alembic`

### Node.js
- `express`
- `jest`
- `eslint`
- `prettier`

### TypeScript
- `typescript`
- `@types/node`
- `jest`
- `eslint`
- `prettier`

## 4. Dev & CI Tools
- **GitHub Actions**: CI/CD workflows under `.github/workflows/`
- **Docker**: Containerization (`Dockerfile`, `docker-compose.yml`)
- **Make**: Task automation via `Makefile`
- **VS Code Extensions**:
  - Prettier
  - ESLint
  - Python
  - Templater (Obsidian)
  - Dataview (Obsidian)

## 5. Documentation & Vault Plugins
- **Obsidian** with:
  - Templater
  - Dataview
  - Calendar
  - Tasks

---
*Update this list whenever you add or remove dependencies.*

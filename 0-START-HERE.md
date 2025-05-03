<!-- TODO: fill in START HERE guide -->

# 🚀 START HERE: GITHUB PROJECT TEMPLATE

Welcome to the **GITHUB PROJECT TEMPLATE**. This scaffold helps you launch any project with a production-ready structure, best practices, multi-language support, and automation included from the start.

---

## 🗂️ What Can Be Edited?

| Area / Folder         | User Editable? | Purpose / Notes |
|---------------------- |:--------------:|-----------------|
| `nodejs/`, `python/`, `typescript/` | ✅ | Your code, tests, and dependencies |
| `docs/`               | ✅             | Project/user documentation |
| `obsidian/`           | ✅             | Internal notes vault |
| `.env.example`, `.env`| ✅             | Environment variables |
| `i18n/`               | ✅             | Sample translations for i18n |
| `TELEMETRY_OPT_IN.md` | ✅             | Opt-in for anonymous analytics |
| `README.md`, `CONTRIBUTING.md`, etc. | ✅ | Main project docs |
| `scripts/`            | ⚠️             | Project automation (edit with care) |
| `.github/workflows/`  | ⚠️             | CI/CD automation (edit with care) |
| `.husky/`, `python/.pre-commit-config.yaml` | ⚠️ | Pre-commit hooks (edit with care) |
| `Makefile`, `Dockerfile`, `docker-compose.yml` | ⚠️ | Build/deploy automation |
| `CODEOWNERS`, `SECURITY.md`, etc. | ⚠️ | Project meta/configuration |

**Legend:**
- ✅ = Safe to edit for your project needs
- ⚠️ = Edit with care; these are part of the template’s automation/operation

---

## ✅ Step 1: Set Up the Project

Open a terminal in this folder and run:

```bash
./scripts/setup.sh
```

This will:
- Copy `.env.example` to `.env`
- Install Python, Node.js, and TypeScript dependencies (if detected)

---


## 🚦 Automation & CI/CD Highlights

- **Container Security Scan:** Automated Trivy scan of Docker images for vulnerabilities ([container-security.yml](.github/workflows/container-security.yml)).
- **Mock API Server:** Start a local mock server from your OpenAPI spec using Prism ([mock-api.yml](.github/workflows/mock-api.yml), [`scripts/mock-api.sh`](scripts/mock-api.sh), [`scripts/mock-api.ps1`](scripts/mock-api.ps1)).
- **Internationalization (i18n):** Sample translations and workflow ([i18n/locales/](i18n/locales/), [i18n-sample.yml](.github/workflows/i18n-sample.yml)).
- **Telemetry Opt-In:** Explicit opt-in for anonymous usage analytics ([TELEMETRY_OPT_IN.md](TELEMETRY_OPT_IN.md), [telemetry-optin.yml](.github/workflows/telemetry-optin.yml)).

## 📦 Step 2: Development Tasks

| Task              | Command                         |
|-------------------|----------------------------------|
| Format all code   | `./scripts/format.sh`            |
| Run tests         | `./scripts/test.sh`              |
| Build TS project  | `./scripts/build.sh`             |
| Deploy (manual)   | `./scripts/deploy.sh`            |

---

## 🛠️ Step 3: Release and Changelog Automation

To create a new release:

```bash
./scripts/release.sh 1.2.3
```

This script will:
- Update all version references
- Append new commits to `CHANGELOG.md`
- Commit, tag, and push your release

---

## 📓 Step 4: Project Notes with Obsidian

To use the built-in Obsidian vault:
1. Launch Obsidian
2. Choose "Open folder as vault"
3. Select the `obsidian/` folder

Sync with GitHub docs:

```bash
./scripts/sync-docs.sh
```

---



## 🧪 Mock API Server & UI

You can run a local mock API server from your OpenAPI spec for contract testing and rapid prototyping:

```pwsh
# On Windows PowerShell
./scripts/mock-api.ps1

# On Linux/macOS (bash)
./scripts/mock-api.sh
```

Or use the [Mock API workflow](.github/workflows/mock-api.yml) to run it in CI.

> **See also:** [`mock-ui/README.md`](mock-ui/README.md) for all UI and API testing options, including static HTML/JS, Swagger UI, and a React+Vite mock UI.

## 🧱 Folder Overview

- `python/`, `nodejs/`, `typescript/` — Use one or more depending on stack
- `obsidian/` — Internal docs, templates, retros, planning
- `docs/` — Public-facing docs (copied from Obsidian or manually written)
- `scripts/` — All automation for testing, building, docs, and releases
- `.github/` — GitHub workflows and contribution tools

---

## 🧠 Tips

- Keep `version.txt` updated with `version-bump.sh`
- Use `update-changelog.sh` regularly
- `Makefile` available for advanced task chaining

---

You're ready to build! 🎉

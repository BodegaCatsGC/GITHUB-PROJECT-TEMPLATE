
# GITHUB PROJECT TEMPLATE

[![CI](https://github.com/your-username/GITHUB-PROJECT-TEMPLATE/actions/workflows/ci.yml/badge.svg)](https://github.com/your-username/GITHUB-PROJECT-TEMPLATE/actions/workflows/ci.yml)
[![Release](https://github.com/your-username/GITHUB-PROJECT-TEMPLATE/actions/workflows/release.yml/badge.svg)](https://github.com/your-username/GITHUB-PROJECT-TEMPLATE/actions/workflows/release.yml)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](LICENSE)

This repository provides a multi-language project template with best practices for Node.js, Python, and TypeScript. It includes:

- Pre-configured CI/CD workflows
- Docker and Compose support
- Documentation and onboarding guides
- Example scripts for build, test, and deployment
- [Troubleshooting Guide](./TROUBLESHOOTING.md)
- [First-Time Contributor Guide](./docs/first-pr.md)
- [Editor/IDE Recommendations](./docs/editor.md)
- [Accessibility & Inclusion](./docs/accessibility.md)

## Quick Start

1. Clone the repository
2. Run the setup script: `pwsh ./setup.ps1` (or `bash ./scripts/setup.sh` on Unix)
3. Start coding in your preferred language folder




## API Testing Examples
> **See [`mock-ui/README.md`](mock-ui/README.md) for all UI/testing options, including static HTML/JS, Swagger UI, and a React+Vite mock UI.**

- **Python:** See `python/tests/test_api.py` for a sample using `requests` and `pytest`.
- **Node.js:** See `nodejs/tests/api.test.js` for a sample using `supertest` and `jest`.
- **TypeScript:** See `typescript/tests/api.test.ts` for a sample using `supertest` and `jest`.
- **Postman:** Import `postman_collection.json` for ready-to-run API tests.
- **Insomnia:** Import `insomnia_api_test.yaml` for ready-to-run API tests.
- **k6:** Use `k6-api-test.js` for load/performance testing (`k6 run k6-api-test.js`).

> For contract testing, the workflow uses [Schemathesis](https://schemathesis.readthedocs.io/) against `docs/api/openapi.yml`.

[![codecov](https://codecov.io/gh/your-username/GITHUB-PROJECT-TEMPLATE/branch/main/graph/badge.svg)](https://codecov.io/gh/your-username/GITHUB-PROJECT-TEMPLATE)

## License

MIT. See [LICENSE](./LICENSE).

---

## What Can Be Edited vs. What Is Managed by the Template

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

> **Tip:** If in doubt, check the file’s header or ask a maintainer before editing.

---

## Automation & CI/CD Highlights

- **Container Security Scan:** Automated Trivy scan of Docker images for vulnerabilities ([container-security.yml](.github/workflows/container-security.yml)).
- **Mock API Server:** Start a local mock server from your OpenAPI spec using Prism ([mock-api.yml](.github/workflows/mock-api.yml), [`scripts/mock-api.sh`](scripts/mock-api.sh), [`scripts/mock-api.ps1`](scripts/mock-api.ps1)).
- **Internationalization (i18n):** Sample translations and workflow ([i18n/locales/](i18n/locales/), [i18n-sample.yml](.github/workflows/i18n-sample.yml)).
- **Telemetry Opt-In:** Explicit opt-in for anonymous usage analytics ([TELEMETRY_OPT_IN.md](TELEMETRY_OPT_IN.md), [telemetry-optin.yml](.github/workflows/telemetry-optin.yml)).


## Related UI & Testing Features

- **Mock API UI:** Multiple ways to interact with your API for onboarding, demos, and manual/automated testing. See [`mock-ui/README.md`](mock-ui/README.md) for:
  - Static HTML/JS (no build needed)
  - Swagger UI (OpenAPI explorer)
  - React + Vite mock UI (extensible, modern)
- **Postman/Insomnia Collections:** Import `postman_collection.json` or `insomnia_api_test.yaml` for ready-to-run API tests.
- **Contract Testing:** Automated with Schemathesis in CI ([api-test.yml](.github/workflows/api-test.yml)).

---

## Mock API Server

You can run a local mock API server from your OpenAPI spec for contract testing and rapid prototyping:

```pwsh
# On Windows PowerShell
./scripts/mock-api.ps1

# On Linux/macOS (bash)
./scripts/mock-api.sh
```

Or use the [Mock API workflow](.github/workflows/mock-api.yml) to run it in CI.

## Internationalization (i18n)

Sample translation files are in [`i18n/locales/`](i18n/locales/). Add or update translations as needed. The [i18n workflow](.github/workflows/i18n-sample.yml) checks for translation files.

## Telemetry Opt-In

This project is privacy-first. No analytics are collected unless you explicitly opt in by checking the box in [`TELEMETRY_OPT_IN.md`](TELEMETRY_OPT_IN.md). The [telemetry workflow](.github/workflows/telemetry-optin.yml) checks for this file.

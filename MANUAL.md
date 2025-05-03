
# Project Template Manual

This manual is the definitive, detailed resource for using every part of the **GITHUB PROJECT TEMPLATE**. It covers onboarding, development, testing, automation, documentation, UI, API, CI/CD, and more. Use it as your single source of truth for project setup, day-to-day work, and advanced scenarios.

---

## 1. Onboarding & Setup

- **Start Here:**
  - Read [`0-START-HERE.md`](0-START-HERE.md) for a high-level overview, editable vs. managed files, and first steps.

- **Clone and Setup:**

  ```pwsh
  git clone https://github.com/<your-username>/GITHUB-PROJECT-TEMPLATE.git
  cd GITHUB-PROJECT-TEMPLATE
  ./scripts/setup.sh
  ```

  This script installs all dependencies (Python, Node.js, TypeScript), copies `.env.example` to `.env`, and prepares your environment.

- **Environment Variables:**
  - Copy `.env.example` to `.env` and edit as needed for secrets, API keys, and environment-specific config.

- **First Build/Run:**
  - See language-specific instructions below, or use the unified scripts in the `scripts/` folder.

---

## 2. Folder Structure & What to Edit (and What to Prune)

- See [`docs/structure.md`](docs/structure.md) for a full, auto-generated map of every folder and file.

- **User-editable (safe to change):**

  - `python/`, `nodejs/`, `typescript/` — Your main code, tests, and dependencies for each language. **Prune unused stacks**: If you only use Python, delete `nodejs/` and `typescript/` (and vice versa).
  - `docs/` — All public-facing documentation. Add guides, API docs, onboarding, etc. **Prune sample docs** you don't need.
  - `obsidian/` — Internal notes vault for planning, retros, and knowledge base (open with Obsidian app). **Optional:** Remove if you don't use Obsidian. If you keep it, see [`obsidian/README.md`](obsidian/README.md) for usage tips and templates.
  - `.env`, `.env.example` — Environment variables for local/dev/prod. **Keep only relevant keys for your stack.** Document any new variables in `README.md` and `docs/`.
  - `i18n/` — Add or update translation files for internationalization. **Prune if not using i18n.** If using, see the i18n section below for adding new languages and testing translations.
  - `TELEMETRY_OPT_IN.md` — Opt in/out of anonymous usage analytics. **Remove if you don't want telemetry.** If you keep telemetry, ensure your privacy policy is up to date.

- **Managed/automation (edit with care):**

  - `scripts/` — All project automation: build, test, format, deploy, release, mock API, etc. **Prune scripts for stacks you don't use (e.g., `test-api.ps1` if not using API tests).** Document any custom scripts in `docs/structure.md`.
  - `.github/workflows/` — CI/CD automation, security, contract testing, i18n, telemetry, etc. **Prune workflows for stacks/tools you don't use (e.g., i18n, telemetry, contract testing).**
  - `.husky/`, `Makefile`, `Dockerfile`, `docker-compose.yml` — Pre-commit hooks, build/deploy automation. **Prune Docker/compose if not containerizing.**
  - `CODEOWNERS`, `SECURITY.md`, etc. — Project meta/configuration. **Edit to match your team and security needs.**

---

### Pruning for Specific Architectures

**Python-only:**

- Remove `nodejs/`, `typescript/`, related scripts (e.g., `test-api.ps1`, `mock-api.ps1` if only used for JS/TS), and workflow files (`.github/workflows/nodejs*`, `.github/workflows/typescript*`).
- Prune JS/TS test collections (`nodejs/tests/`, `typescript/tests/`) and Postman/Insomnia files if not needed.
- Update `README.md`, `MANUAL.md`, and `docs/` to remove JS/TS references.

**Node.js-only:**

- Remove `python/`, `typescript/`, related scripts, and workflow files (`.github/workflows/python*`, `.github/workflows/typescript*`).
- Prune Python test collections (`python/tests/`) and API docs if not needed.
- Update docs and scripts to remove Python/TS references.

**TypeScript-only:**

- Remove `python/`, `nodejs/`, related scripts, and workflow files (`.github/workflows/python*`, `.github/workflows/nodejs*`).
- Update docs and scripts to remove Python/Node references.

**No i18n:**

- Remove `i18n/` and i18n workflow (`.github/workflows/i18n*`).
- Remove i18n references from docs and UI.

**No Obsidian:**

- Remove `obsidian/` and related scripts (`scripts/obsidian-export.sh`).
- Remove Obsidian references from docs.

**No Telemetry:**

- Remove `TELEMETRY_OPT_IN.md` and telemetry workflow (`.github/workflows/telemetry-optin.yml`).
- Remove telemetry references from docs and scripts.

**No Docker/Compose:**

- Remove `Dockerfile`, `docker-compose.yml`, and related scripts (`scripts/deploy.sh`, etc.).
- Remove Docker references from docs and CI.

**No Mock UI:**

- Remove `mock-ui/` and references in docs, including `mock-ui/README.md` and any mock UI scripts.

**Tip:** After pruning, update `README.md`, `MANUAL.md`, and CI workflows to remove references to deleted stacks/tools. Also check `docs/structure.md` and any onboarding guides for outdated references.

---

---

## 3. Development: Running & Building Code

This section explains how to run, build, and extend each supported stack. **Prune unused stacks as described above.**

### Python (FastAPI)

**Run locally:**

```pwsh
cd python
pip install -r requirements.txt
uvicorn src.main:app --reload
# Visit http://localhost:8000
```

**Main app:** `python/src/main.py`
**Tests:** `python/tests/`
**Add endpoints:** Edit `main.py`, add tests in `tests/`.
**Build/packaging:** Use `pyproject.toml` and `requirements.txt` for dependencies. Use `tox` for multi-version testing if needed.

### Node.js (Express)

**Run locally:**

```pwsh
cd nodejs
npm install
npm start
# Visit http://localhost:3000
```

**Main app:** `nodejs/src/index.js`
**Tests:** `nodejs/tests/`
**Add endpoints:** Edit `src/index.js`, add tests in `tests/`.
**Build/packaging:** Use `package.json` for dependencies. Add build scripts if using TypeScript or Babel.

### TypeScript (NestJS/Express)

**Run locally:**

```pwsh
cd typescript
npm install
npm run build
npm start
# Visit http://localhost:4000
```

**Main app:** `typescript/src/index.ts`
**Tests:** `typescript/tests/`
**Add endpoints:** Edit `src/index.ts`, add tests in `tests/`.
**Build/packaging:** Use `tsconfig.json` for TypeScript config. Use `npm run build` to transpile.

**General tips:**

- Remove unused language folders and update scripts/workflows accordingly.
- If using Docker, build with `docker build -t myapp .` and run with `docker-compose up`.

---

## 4. Testing: How to Run & Add Tests

Testing is critical for quality and CI/CD. Each stack has its own test runner, and a unified script is provided.

- **Unified test runner (all stacks):**

  ```pwsh
  ./scripts/test.sh
  ```

  Runs all available tests for all stacks. Prune or edit this script if you remove stacks.

- **Python:**

  ```pwsh
  cd python
  pytest
  # Add tests in python/tests/
  # Use fixtures in conftest.py for setup/teardown.
  ```

  - Add new test files for new endpoints or features.
  - Use `tox` for multi-version or lint/test automation.

- **Node.js:**

  ```pwsh
  cd nodejs
  npm test
  # Add tests in nodejs/tests/
  # Uses Jest by default; see package.json for config.
  ```

  - Add new test files for new endpoints or features.

- **TypeScript:**

  ```pwsh
  cd typescript
  npm test
  # Add tests in typescript/tests/
  # Uses Jest by default; see package.json for config.
  ```

  - Add new test files for new endpoints or features.

**Prune test scripts and test folders for stacks you remove.**

---

## 5. Mock API & UI: Prototyping, Testing, and Demos

The template provides multiple ways to mock and test your API, and to demo or prototype with a UI. **Remove `mock-ui/` and related scripts if not needed.**

- **Start mock API server (OpenAPI-powered, contract-first):**

  ```pwsh
  ./scripts/mock-api.ps1
  # or (on Unix): ./scripts/mock-api.sh
  ```

  - Uses your OpenAPI spec (`docs/api/openapi.yml`) to serve mock endpoints. Great for frontend/backend decoupling and contract testing.
  - Edit the OpenAPI spec to add or change endpoints.

- **Mock UI options:**
  - **Static HTML/JS:** Open [`mock-ui/index.html`](mock-ui/index.html) in your browser. No build needed. Edit `mock-ui.js` to add more endpoints.
  - **Swagger UI:** Open [`mock-ui/swagger-ui.html`](mock-ui/swagger-ui.html) for an interactive OpenAPI explorer. Loads your OpenAPI spec.
  - **React+Vite UI:**

    ```pwsh
    cd mock-ui
    npm install
    npm run dev
    # Visit http://localhost:5173
    ```

    - Extensible, modern UI for demos, onboarding, or as a frontend starter. Edit `src/App.jsx` to add features.

- **Troubleshooting:**
  - If you see CORS errors, ensure your API server allows requests from the UI’s origin, or use the local mock server.

**Prune `mock-ui/` and references in docs if not using these features.**

---

## 6. API Testing & Contract Testing: Tools & Workflows

Automated and manual API testing is supported for all stacks. **Remove unused test collections and scripts.**

- **Postman:** Import `postman_collection.json` for ready-to-run API tests (covers all major endpoints). Update or prune endpoints as you change your API.
- **Insomnia:** Import `insomnia_api_test.yaml` for the same.
- **k6:**

  ```pwsh
  k6 run k6-api-test.js
  # Edit k6-api-test.js to add load/performance scenarios
  ```

- **Contract testing in CI:**
  - See `.github/workflows/api-test.yml` (runs Schemathesis against your OpenAPI spec for contract and fuzz testing).
  - Add new endpoints to `openapi.yml` and collections to keep tests up to date.

**Prune test collections and workflows for stacks you remove.**

---

## 7. Automation & CI/CD: Scripts & Workflows

Automation is a core feature of the template. **Prune scripts and workflows for stacks/tools you remove.**

- **Format all code (Python, JS, TS):**

  ```pwsh
  ./scripts/format.sh
  ```

- **Build TypeScript:**

  ```pwsh
  ./scripts/build.sh
  ```

- **Release (version bump, changelog, tag, push):**

  ```pwsh
  ./scripts/release.sh 1.2.3
  ```

- **Changelog (append new commits):**

  ```pwsh
  ./scripts/update-changelog.sh
  ```

- **CI/CD Workflows:**
  - All workflows are in `.github/workflows/`. See comments in each YAML for details.
  - Includes security scanning, contract testing, i18n, telemetry, and more.
  - **Prune YAML files for stacks/tools you remove.**

---

## 8. Documentation & Notes: Public & Internal

Documentation is split into public docs (for users/contributors) and internal notes (for your team).

- **Public docs:**
  - Edit/add files in `docs/` (see [`docs/index.md`](docs/index.md) for structure).
  - API docs: edit `docs/api/openapi.yml` and `docs/api/README.md`.
  - **Prune sample docs and API files for stacks you remove.**

- **Internal notes:**
  - Use Obsidian with the `obsidian/` folder for planning, retros, and knowledge base.
  - Templates for daily notes, meetings, etc. in `obsidian/templates/`.
  - **Remove `obsidian/` if not using internal notes.**

- **Sync docs:**

  ```pwsh
  ./scripts/sync-docs.sh
  # Mirrors Obsidian notes to docs/ for sharing
  ```

---

## 9. Internationalization (i18n): Adding & Testing Translations

If you need to support multiple languages, use the i18n folder and workflow. **Remove if not needed.**

- **Edit translations:**
  - Update or add files in `i18n/locales/` (e.g., `en.json`, `es.json`).
  - Add new languages by copying `en.json` and translating keys.

- **Check i18n in CI:**
  - See `.github/workflows/i18n-sample.yml` for automated checks.

- **Prune i18n files and workflow if not using internationalization.**

---

## 10. Telemetry Opt-In: Privacy & Analytics

Telemetry is opt-in and privacy-first. **Remove if not needed.**

- **Opt-in:**
  - Edit [`TELEMETRY_OPT_IN.md`](TELEMETRY_OPT_IN.md) to enable anonymous usage analytics (never enabled by default).
  - See workflow `.github/workflows/telemetry-optin.yml` for enforcement.

- **Prune telemetry file and workflow if not using analytics.**

---

## 11. Troubleshooting & Support

If you run into issues, check the troubleshooting and support docs. **Prune sections for stacks/tools you remove.**

- **Troubleshooting:**
  - See [`TROUBLESHOOTING.md`](TROUBLESHOOTING.md) for common issues, CORS/network tips, and solutions.
  - Add your own troubleshooting tips as your project evolves.

- **Support:**
  - See [`SUPPORT.md`](SUPPORT.md) for how to get help, file issues, or request features.

---

## 12. Contribution & Security: How to Contribute & Report Issues

Follow the contribution and security guidelines to keep your project healthy. **Prune or update these docs for your team/process.**

- **How to contribute:**
  - See [`CONTRIBUTING.md`](CONTRIBUTING.md) for PR process, commit conventions, and review tips.
  - Update with your own team’s process if needed.

- **Security policy:**
  - See [`SECURITY.md`](SECURITY.md) for responsible disclosure and reporting vulnerabilities.
  - Update with your own security contacts if needed.

---

## 13. Example: Add a New API Endpoint (Python)

This example shows how to add a new endpoint, test it, and update docs/collections. **Prune or adapt for your stack.**


---
### Example: Add a New API Endpoint (Python)

This example shows how to add a new endpoint, test it, and update docs/collections. **Prune or adapt for your stack.**

**1. Edit `python/src/main.py`:**

```python
@app.get("/new-endpoint")
def new_endpoint():
    return {"message": "Hello from new endpoint!"}
```

**2. Add a test in `python/tests/test_api.py`:**

```python
def test_new_endpoint(client):
    response = client.get("/new-endpoint")
    assert response.status_code == 200
```

**3. Run tests:**

```pwsh
pytest
```

**4. Update OpenAPI spec in `docs/api/openapi.yml` to document the new endpoint.**

**5. Add to Postman/Insomnia collections if needed.**

**6. Remove or adapt this example for your stack if not using Python.**

---

---

---

---

For more, see the README and docs in each folder, and cross-reference [`mock-ui/README.md`](mock-ui/README.md) for all UI/testing options.
---
---
---
For more, see the README and docs in each folder, and cross-reference [`mock-ui/README.md`](mock-ui/README.md) for all UI/testing options.

---

---

---

For more, see the README and docs in each folder, and cross-reference [`mock-ui/README.md`](mock-ui/README.md) for all UI/testing options.

---

---

---

For more, see the README and docs in each folder, and cross-reference [`mock-ui/README.md`](mock-ui/README.md) for all UI/testing options.

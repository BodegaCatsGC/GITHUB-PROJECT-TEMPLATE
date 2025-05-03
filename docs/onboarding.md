<!-- TODO: onboarding guide -->

# Onboarding Guide

Welcome to the **GITHUB PROJECT TEMPLATE**! This guide helps new contributors and team members get started quickly.

## Prerequisites

- Git installed and configured with your GitHub account.
- Node.js (>=14 LTS) and npm installed.
- Python (>=3.8) and pip installed.
- Optional: Docker & Docker Compose for containerized setup.
- An editor or IDE of your choice (e.g., VS Code, IntelliJ).

## 1. Clone the Repository

```bash
git clone https://github.com/<your-username>/GITHUB-PROJECT-TEMPLATE.git
cd GITHUB-PROJECT-TEMPLATE
```

## 2. Install Dependencies

Run the setup script to install all required dependencies and initialize your environment:

```bash
./scripts/setup.sh
```

This will:

- Copy `.env.example` to `.env`
- Install Python packages
- Install Node.js and TypeScript packages

## 3. Explore the Structure

Familiarize yourself with the main folders:

- `python/`: Python backend code and tests.
- `nodejs/`: Node.js service code and tests.
- `typescript/`: TypeScript service code and tests.
- `obsidian/`: Internal docs vault (open in Obsidian).
- `docs/`: Public documentation.
- `i18n/`: Sample translations for internationalization (i18n).
- `TELEMETRY_OPT_IN.md`: Opt-in for anonymous analytics.
- `scripts/`: Automation scripts (testing, formatting, release, mock API server, etc.).
- `.github/`: CI/CD workflows, issue & PR templates, and configs.

## 4. Run the Project Locally (Choose your stack)

### Python (FastAPI)

```bash
cd python
pip install -r requirements.txt
uvicorn src.main:app --reload
# App at http://localhost:8000
```

### Node.js (Express)
<!--
cd nodejs
npm install
npm test      # run tests
npm start
# App at http://localhost:3000
-->

### TypeScript (NestJS/Express)
<!--
cd typescript
npm install
npm run build
npm start
# App at http://localhost:4000
-->

Comment out or prune sections above to match your stack.

## 4b. Mock API Server & UI

You can run a local mock API server from your OpenAPI spec for contract testing and rapid prototyping:

```pwsh
# On Windows PowerShell
./scripts/mock-api.ps1

# On Linux/macOS (bash)
./scripts/mock-api.sh
```

Or use the [Mock API workflow](../../.github/workflows/mock-api.yml) to run it in CI.

> **See also:** [`mock-ui/README.md`](../../mock-ui/README.md) for all UI and API testing options, including static HTML/JS, Swagger UI, and a React+Vite mock UI.

## 5. Running Tests

# Onboarding Guide

---

## Automation & CI/CD Highlights

- **Container Security Scan:** Automated Trivy scan of Docker images for vulnerabilities ([container-security.yml](../../.github/workflows/container-security.yml)).
- **Mock API Server:** Start a local mock server from your OpenAPI spec using Prism ([mock-api.yml](../../.github/workflows/mock-api.yml), [`scripts/mock-api.sh`](../../scripts/mock-api.sh), [`scripts/mock-api.ps1`](../../scripts/mock-api.ps1)).
- **Internationalization (i18n):** Sample translations and workflow ([i18n/locales/](../../i18n/locales/), [i18n-sample.yml](../../.github/workflows/i18n-sample.yml)).
- **Telemetry Opt-In:** Explicit opt-in for anonymous usage analytics ([TELEMETRY_OPT_IN.md](../../TELEMETRY_OPT_IN.md), [telemetry-optin.yml](../../.github/workflows/telemetry-optin.yml)).

Run all tests across languages:

```bash
./scripts/test.sh
```

## 6. Formatting Code

Ensure consistent code style:

```bash
./scripts/format.sh
```

## 7. Creating a Feature Branch

1. Create a new branch from `main`:

   ```bash
   git checkout main
   git pull
   git checkout -b feature/your-feature-name
   ```

2. Make your changes and commit with clear messages:

   ```bash
   git commit -m "feat: add X feature"
   ```

3. Push and open a Pull Request:

   ```bash
   git push -u origin feature/your-feature-name
   ```

## 8. Submitting a Pull Request

- Fill in the PR template with description, type of change, and checklist.
- Reference any related issues using `Closes #issue-number`.
- Request reviews from CODEOWNERS or specific reviewers.

## 9. Reviewing and Merging

- Address review comments.
- Ensure CI checks pass.
- Squash or rebase commits as needed.
- Merge with a descriptive commit message.

## 10. Releasing a New Version

After merging to `main`, run:

```bash
./scripts/release.sh X.Y.Z
```

This will:

- Bump version in `version.txt` and config files.
- Update `CHANGELOG.md` with commit history.
- Tag and push the release.

---

You're all set! If you have any questions, check the `docs/` folder or reach out to the team. Happy coding! 🎉

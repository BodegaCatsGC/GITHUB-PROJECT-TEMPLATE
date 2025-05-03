# CI/CD Overview

This document explains the continuous integration and continuous deployment (CI/CD) workflows configured for the **GITHUB PROJECT TEMPLATE**.

## Workflows Location

All CI/CD pipelines are defined in the `.github/workflows/` directory. Key workflows include:

- **python.yml**:  
  - Runs on push and pull_request events.  
  - Sets up Python, installs dependencies, and runs tests (`pytest`).  
- **nodejs.yml**:  
  - Runs on push and pull_request events.  
  - Sets up Node.js, installs dependencies, and runs tests (`npm test`).  
- **typescript.yml**:  
  - Runs on push and pull_request events.  
  - Sets up Node.js, installs dependencies, builds TypeScript project, and runs tests (`npm run build`, `npm test`).

## Adding a New Workflow

1. Create a new YAML file under `.github/workflows/` (e.g., `new-workflow.yml`).
2. Define the `name:`, `on:` triggers (e.g., push, pull_request, schedule), and `jobs:` steps.
3. Use existing workflows as templates for structure and best practices.
4. Commit and push; the new workflow will automatically be active.

## Common Steps

Most workflows follow these patterns:

1. **Checkout** code  
   ```yaml
   - uses: actions/checkout@v3
   ```

2. **Setup Environment**  
   - Python:  
     ```yaml
     - uses: actions/setup-python@v4
       with:
         python-version: '3.x'
     ```  
   - Node.js/TypeScript:  
     ```yaml
     - uses: actions/setup-node@v3
       with:
         node-version: 'lts/*'
     ```

3. **Install Dependencies**  
   - Python: `pip install -r requirements.txt`  
   - Node.js: `npm install`  
   - TypeScript: `npm run build`

4. **Run Tests**  
   - Python: `pytest`  
   - Node.js: `npm test`  
   - TypeScript: `npm test`

## Deployment Triggers

- **Manual dispatch**: You can trigger workflows manually via GitHub UI `workflow_dispatch`.  
- **Tag-based releases**: Use tags (e.g., `v1.2.3`) to trigger production deployment steps in workflows.

## Secrets and Environment Variables

- Store sensitive values in **GitHub Secrets** (e.g., `DATABASE_URL`, `JWT_SECRET`).  
- Reference them in workflows via `${{ secrets.SECRET_NAME }}`.

## Best Practices

- Keep jobs **fast** by caching dependencies (e.g., pip cache, npm cache).  
- Use **matrix builds** to test multiple versions in parallel.  
- **Fail early** by running lint/format checks before longer test suites.  
- **Monitor** workflow runs and address failures promptly.

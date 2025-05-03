
# Deployment Guide

This document describes the steps to deploy the GITHUB PROJECT TEMPLATE project to various environments.

## Prerequisites

- Access to target hosting platform (e.g., Render, Vercel, AWS, Azure).
- `git` CLI installed and authenticated.
- Docker installed (if using Docker-based deployment).
- Environment variables configured in the target environment.

## Deployment Environments

### 1. Local Development

#### Option A: Docker Compose (Recommended for multi-stack)

```pwsh
# Build and start all services
docker-compose up --build
# Stop and remove containers
docker-compose down
```

#### Option B: Run Services Individually (Choose your stack)

##### Python (FastAPI)

```pwsh
cd python
pip install -r requirements.txt
uvicorn src.main:app --reload
# App at http://localhost:8000
```

##### Node.js (Express)
<!--
cd nodejs
npm install
npm start
# App at http://localhost:3000
-->

##### TypeScript (NestJS/Express)
<!--
cd typescript
npm install
npm run build
npm start
# App at http://localhost:4000
-->

Comment out or prune sections above to match your stack.

### 2. Staging

1. Push to `staging` branch.
2. Configure CI to deploy `staging` branch to staging environment.
3. Verify deployment and run smoke tests.

### 3. Production

1. Tag the release (e.g., `v1.0.0`) and push tag to remote:

   ```bash
   git tag v1.0.0
   git push origin v1.0.0
   ```

2. CI workflow triggered on tag creates a production build and deploys to production server.
3. Monitor deployment logs and health endpoints (e.g., `/health`).

## CI/CD Configuration

- The GitHub Actions workflows in `.github/workflows/` automatically build, test, and deploy:
  - `python.yml` for Python CI.
  - `nodejs.yml` for Node.js CI.
  - `typescript.yml` for TypeScript CI.
  - Add custom deploy steps in each workflow as needed.

## Rollback Strategy

- To rollback, revert to a previous tag:

  ```bash
  git checkout v0.9.0
  git push origin v0.9.0 --force
  ```

- Redeploy the reverted tag via CI.

## Post-Deployment

- Run database migrations (if applicable):

  ```bash
  cd python
  alembic upgrade head
  ```

- Clear caches or CDN if necessary.
- Notify the team of the deployment status.

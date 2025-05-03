
# Mock API UI

This folder contains multiple ways to interact with your API for onboarding, demos, and manual/automated testing:

| UI/Tool         | How to Use                        | Description                                  |
|-----------------|-----------------------------------|----------------------------------------------|
| Static HTML/JS  | Open `index.html` in browser      | Manual API testing, no dependencies          |
| Swagger UI      | Open `swagger-ui.html` in browser | Interactive OpenAPI explorer                 |
| React + Vite    | `npm install && npm run dev`      | Modern, extensible mock UI                   |

# Mock API UI

This folder contains multiple ways to interact with your API for onboarding, demos, and manual/automated testing:

| UI/Tool         | How to Use                        | Description                                  |
|-----------------|-----------------------------------|----------------------------------------------|
| Static HTML/JS  | Open `index.html` in browser      | Manual API testing, no dependencies          |
| Swagger UI      | Open `swagger-ui.html` in browser | Interactive OpenAPI explorer                 |
| React + Vite    | `npm install && npm run dev`      | Modern, extensible mock UI                   |

## When to Use Each UI

- **Static HTML/JS:** For quick, zero-dependency manual API checks.
- **Swagger UI:** For exploring and trying endpoints interactively, or sharing with non-developers.
- **React + Vite:** For onboarding, demos, or as a starting point for a real frontend.
- **Mock API Server:** For frontend/backend decoupled development or contract-first prototyping.

## How to Extend

- **Static UI:** Add more forms and JS functions for new endpoints in `index.html` and `mock-ui.js`.
- **React App:** Add new components/pages in `src/`, update `App.jsx` for more endpoints.
- **Swagger UI:** Just update your OpenAPI spec (`../docs/api/openapi.yml`).

## Cross-linking

- See the main [README.md](../README.md) for API server setup and OpenAPI editing.
- See [docs/onboarding.md](../docs/onboarding.md) for full onboarding instructions.

## Feature Discovery & Pro Tips

- Contributors can use the mock UI for learning, testing, and demoing the API.
- **Pro Tip:** You can run the React mock UI and the mock API server at the same time for a full-stack demo experience!

## React + Vite Mock UI

### Setup

1. Open a terminal in `mock-ui/`.
2. Install dependencies:

   ```pwsh
   npm install
   ```

3. Start the dev server:

   ```pwsh
   npm run dev
   ```

4. Visit [http://localhost:5173](http://localhost:5173) in your browser.

- The React app proxies `/hello` to your API server (default: `http://localhost:8000`).
- Edit `src/App.jsx` to add more endpoints or UI features.

## Static HTML/JS and Swagger UI

- **No build needed:** Just open `index.html` or `swagger-ui.html` directly in your browser for zero-dependency API testing.

### Troubleshooting

- **CORS/network issues?** If you see CORS errors, make sure your API server allows requests from the UI’s origin, or use the local mock API server for testing.

## Related Features & Automation

- **Mock API Server:** `./scripts/mock-api.ps1` or `./scripts/mock-api.sh` (local mock server from OpenAPI spec)
- **API Contract Testing:** See `.github/workflows/api-test.yml` (automated contract tests with Schemathesis)
- **Postman/Insomnia Collections:** Import `postman_collection.json` or `insomnia_api_test.yaml` for API testing

---

**Pro Tip:** You can run the React mock UI and the mock API server at the same time for a full-stack demo experience!

---

**See also:**

- [Main project README](../README.md) for API/server setup and OpenAPI editing
- [Onboarding guide](../docs/onboarding.md) for full onboarding instructions

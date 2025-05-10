# API Documentation

- OpenAPI spec: [openapi.yml](./openapi.yml)
- Postman collection: [../../postman_collection.json](../../postman_collection.json)
- Insomnia collection: [../../insomnia_api_test.yaml](../../insomnia_api_test.yaml)
- k6 load test: [../../k6-api-test.js](../../k6-api-test.js)

## Mock API Server

You can run a local mock API server from your OpenAPI spec for contract testing and rapid prototyping:

```pwsh
# On Windows PowerShell
./scripts/mock-api.ps1

# On Linux/macOS (bash)
./scripts/mock-api.sh
```

Or use the [Mock API workflow](../../.github/workflows/mock-api.yml) to run it in CI.

## Preview OpenAPI Docs

You can preview the OpenAPI spec locally with [Redoc CLI](https://github.com/Redocly/redoc) or [Swagger UI](https://swagger.io/tools/swagger-ui/):

```pwsh
# Redoc CLI
npx redoc-cli serve docs/api/openapi.yml

# Swagger UI (Docker)
docker run -p 8080:8080 -e SWAGGER_JSON=/foo/openapi.yml -v ${PWD}/docs/api/openapi.yml:/foo/openapi.yml swaggerapi/swagger-ui
```

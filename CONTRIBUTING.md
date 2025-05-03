
# Contributing to GITHUB PROJECT TEMPLATE

## License & Attribution

- All code is MIT licensed unless otherwise noted.
- When adding third-party code, include the original license and attribution in the file or in `docs/license-attribution.md`.
- For dependencies, ensure their licenses are compatible with MIT.

See [docs/license-attribution.md](docs/license-attribution.md) for more details.

---

## What Can Be Edited vs. What Is Managed by the Template

Some files and folders are meant for your project code and docs, while others are part of the template’s automation and should be edited with care.

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

If in doubt, check the file’s header or ask a maintainer before editing.

---

First off, thank you for considering contributing! 🎉 Your help makes this project better for everyone.

## How Can I Contribute?

### Contribute to i18n or Telemetry

- Add or improve translations in `i18n/locales/`.
- If you wish to enable anonymous usage analytics, check the box in `TELEMETRY_OPT_IN.md`.

1. **Report Bugs**
   - Search for existing issues or create a new issue using the [Bug Report template](.github/ISSUE_TEMPLATE/bug_report.md).

2. **Suggest Enhancements**
   - Use the [Feature Request template](.github/ISSUE_TEMPLATE/feature_request.md) to propose new features or improvements.

3. **Submit a Pull Request**
   - Fork the repository and clone your fork.
   - Create a branch:

     ```bash
     git checkout -b feature/my-awesome-feature
     ```

   - Make your changes, ensuring tests pass and code is formatted.
   - Commit with a clear message following [Conventional Commits](https://www.conventionalcommits.org/):

     ```
     feat: add new authentication flow
     fix: correct typo in README
     chore: bump version
     ```

   - Push to your fork and open a Pull Request against the `main` branch.
   - Fill out the PR template and reference any related issues (e.g., `Closes #123`).

## Code Style Guidelines

- Follow the existing code style for your language:
  - **Python**: [PEP 8](https://www.python.org/dev/peps/pep-0008/), formatted with `black`.
  - **JavaScript/Node.js**: [Airbnb Style Guide](https://github.com/airbnb/javascript), formatted with `prettier`.
  - **TypeScript**: As defined in `tsconfig.json` and ESLint rules.

- Run formatting and lint checks before committing:

  ```bash
  ./scripts/format.sh
  ./scripts/test.sh
  ```

- Write tests for new functionality and ensure coverage.

## Branch Naming and Workflow

- Use `main` for production-ready code.
- Create feature branches using the pattern:

  ```
  feature/<short-description>
  fix/<short-description>
  chore/<short-description>
  ```

- Open a PR to `main` when ready.

## Review Process

- All changes must be reviewed by at least one code owner.
- Address review feedback promptly and update your branch.
- Squash or rebase commits as necessary for a clean history.

## Pull Request Checklist

- [ ] My code follows the project’s style guidelines.
- [ ] I have added tests to cover my changes.
- [ ] All tests pass (`./scripts/test.sh`).
- [ ] I have updated documentation where necessary.
- [ ] I have updated `CHANGELOG.md` if this is a breaking change or new feature.
- [ ] I have filled out the Pull Request template.
- [ ] I have updated i18n translations and/or telemetry opt-in if relevant.

## Additional Resources

- [Issue and PR Templates](.github/ISSUE_TEMPLATE/)
- [Code of Conduct](CODE_OF_CONDUCT.md)
- [Security Policy](SECURITY.md)
- [Container Security Scan workflow](.github/workflows/container-security.yml)
- [Mock API Server workflow](.github/workflows/mock-api.yml)
- [i18n workflow](.github/workflows/i18n-sample.yml)
- [Telemetry Opt-In workflow](.github/workflows/telemetry-optin.yml)

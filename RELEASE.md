# Release Guide

This document outlines the steps and best practices for creating and publishing a new release for the GITHUB PROJECT TEMPLATE.

## 1. Prepare the Release

1. Ensure all changes are merged into the `main` branch.
2. Run the full test suite:
   ```bash
   make test
   ```
3. Update documentation and changelog:
   ```bash
   make docs
   make format
   ./scripts/update-changelog.sh <version>
   ```

## 2. Bump Version

Use the release script to bump the version and tag the release:
```bash
./scripts/release.sh <version>
```
This will:
- Update `version.txt`
- Update versions in `pyproject.toml`, `package.json` files
- Append a new section to `CHANGELOG.md`
- Commit and tag the release
- Push to the `main` branch

## 3. Create GitHub Release

After tagging, create a GitHub release:

1. Go to the [Releases page](https://github.com/<your-username>/GITHUB-PROJECT-TEMPLATE/releases).
2. Click **Draft a new release**.
3. Select the tag `v<version>`.
4. Update the release title and description (copy from `CHANGELOG.md` under `[<version>]`).
5. Publish the release.

## 4. Post-Release Tasks

- Verify the release artifacts (e.g., built images, package registries).
- Update any dependent projects or documentation.
- Celebrate and announce the new version to stakeholders!

---

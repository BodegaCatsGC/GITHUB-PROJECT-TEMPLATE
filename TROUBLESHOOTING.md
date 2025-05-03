# Troubleshooting Guide

Common issues and solutions for GITHUB PROJECT TEMPLATE.

## Setup Issues
- **pip not found**: Ensure Python is installed and added to your PATH.
- **npm not found**: Ensure Node.js is installed and added to your PATH.
- **Permission denied**: Try running your shell as administrator.

## Build/Test Issues
- **Module not found**: Run the setup script to install dependencies.
- **Port already in use**: Stop other services using the same port or change the port in `.env`.

## CI/CD Issues
- **Workflow fails on install**: Check for correct Node.js/Python versions in `.nvmrc` and `.tool-versions`.

If your issue is not listed, open an issue on GitHub with details and error logs.

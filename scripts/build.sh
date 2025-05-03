#!/usr/bin/env bash
# ===============================
# DO NOT EDIT unless you know what you're doing.
# This script is part of the project template automation.
# ===============================
# Makefile for GITHUB PROJECT TEMPLATE

.PHONY: setup format test build deploy release docs clean

setup:
	@echo "Setting up project..."
	./scripts/setup.sh

format:
	@echo "Formatting code..."
	./scripts/format.sh

test:
	@echo "Running tests..."
	./scripts/test.sh

build:
	@echo "Building project..."
	./scripts/build.sh

deploy:
	@echo "Deploying project..."
	./scripts/deploy.sh

release:
	@echo "Releasing project version $(VER)..."
	./scripts/release.sh $(VER)

docs:
	@echo "Generating docs..."
	./scripts/generate-readme.sh
	./scripts/sync-docs.sh

clean:
	@echo "Cleaning up..."
	rm -rf build dist .pytest_cache .cache

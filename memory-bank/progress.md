# progress

**Current status and evolution**

This document tracks what works, what's left to build, known issues, and the evolution of project decisions.

## What works
- Jekyll site scaffold with default layouts
- Awesome Jekyll Theme cloned and integrated
- Dockerfile and docker-compose for containerized development
- Local live reload via `docker-compose up`
- Git repository initialized, committed, and pushed to GitHub

## What's left to build
- Optional CI/CD with GitHub Actions to build and publish Docker image
- Deployment instructions for production (e.g., push to container registry, run on cloud provider)
- Domain configuration steps (DNS, SSL)
- Custom content pages beyond the default example

## Current status
Initial local development and remote GitHub integration complete.  

## Known issues
- None at this stage; container build and serve function as expected.

## Evolution of project decisions
- Decided to clone the theme locally (not remote gem) for full customization.
- Opted for Docker-based Jekyll to avoid host gem install issues.
- Chose manual GitHub repo creation due to absent `gh` CLI.

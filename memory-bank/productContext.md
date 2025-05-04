# productContext

**Why this project exists**

This project delivers a fully serverless static website that content authors can update via Markdown in VS Code and deploy anywhere as a Docker container. By combining Jekyll with the Awesome Jekyll Theme, it provides a flexible, portable solution without requiring a traditional web server.

## Purpose
- Enable Markdown-based page authoring.
- Provide a polished, responsive theme out of the box.
- Simplify deployment by encapsulating the site in Docker.

## Problems addressed
- Eliminates server maintenance by serving static content.
- Avoids platform lock-in: runs on any container host.
- Speeds up content updates via GitHub push.

## Functionality overview
- Jekyll builds site pages from Markdown files.
- The theme supplies layouts, includes, and assets.
- Docker container hosts the Jekyll server for local dev and production.

## User experience goals
- Instant live preview on `docker-compose up`.
- Seamless GitHub workflow for content updates.
- Minimal configuration to get started.

## Key features
- Awesome Jekyll Theme cloned locally for full customization.
- Dockerfile and docker-compose for consistent environment.
- GitHub repository for version control and collaboration.

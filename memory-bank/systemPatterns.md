# systemPatterns

**System architecture**

This static site uses Docker to encapsulate a Jekyll build environment and the Awesome Jekyll Theme for presentation. The architecture is minimal:

```
[Markdown files]  --jekyll-->  [Static HTML/CSS/JS assets]  --served by-->  [Jekyll server in Docker]
```

## Architectural overview
- Local files mounted into a Docker container running Jekyll.
- Jekyll regenerates HTML on file changes (live reload).
- Git tracks source and theme; Docker images package runtime.

## Design patterns in use
- **Containerization**: Isolate build/runtime environment via Dockerfile.
- **Theming**: Local theme clone as a submodule pattern for full control.
- **Volume mount**: Link host source into container for live development.
- **Single responsibility**: Dockerfile handles build/install; compose controls service.

## Component relationships
- **Host FS** ↔ **Docker container**: Volume mount mapping project root.
- **Jekyll CLI** inside container triggers build and serve.
- **Git** remotely syncs code on GitHub.

## Data flow and interactions
1. Developer edits Markdown/SCSS/HTML locally.  
2. Docker container sees file change → Jekyll rebuilds.  
3. Jekyll serves updated site on `http://localhost:4000`.

## Critical implementation paths
- Theme integration in `_config.yml` and `include:` directive.
- Docker build caching (`bundle install` layer) for speed.
- Volume sync for instant feedback.

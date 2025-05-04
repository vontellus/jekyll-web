# techContext

**Technologies used**

This project leverages open-source tools for static site generation, theming, and containerization.

## Technologies in use
- Jekyll 4.x (Ruby-based static site generator)  
- Awesome Jekyll Theme (local clone)  
- Ruby 3.1 (runtime inside Docker)  
- Alpine Linux (lightweight base image)  
- Docker & Docker Compose  
- Git & GitHub for version control  
- Markdown for content authoring  
- YAML for configuration  

## Development setup
1. Install Docker Desktop (includes Compose).  
2. Clone repository.  
3. Run `docker-compose up`.  

## Technical constraints
- Gems installed inside container; no host Ruby install required.  
- Theme must be included via `include:` directive for local customization.  
- Live reload through volume mounts.

## Dependencies
- `jekyll`, `jekyll-feed` plugins.  
- Local theme directory at `themes/awesome-jekyll-theme`.  

## Tool usage patterns
- `docker-compose up` for development.  
- `docker build` / `docker run` for production.  
- `git` and GitHub for source control and collaboration.

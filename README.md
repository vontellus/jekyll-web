# jekyll-web

A Dockerized Jekyll site using the Awesome Jekyll Theme.

## Prerequisites

- Docker & Docker Compose  
- Git  
- GitHub CLI (`gh`) configured

## Local Development

```bash
docker-compose up
```

Visit http://localhost:4000 in your browser. Changes to Markdown or theme files auto-reload.

## Building & Serving

To build and serve without Docker:

```bash
bundle install
bundle exec jekyll serve
```

## Deploying Anywhere

Build a container image:

```bash
docker build -t jekyll-web .
```

Run it:

```bash
docker run -p 4000:4000 jekyll-web
```

## Repository

Hosted on GitHub: https://github.com/vontellus/jekyll-web.git

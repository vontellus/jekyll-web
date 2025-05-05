# Active Context

Current Work:
- Addressing build performance issues for the Dockerized Jekyll site.
- Investigating and evaluating approaches to optimize dependency resolution during Docker builds.
- Considering vendoring gem dependencies using Bundler’s packaging (e.g. “bundle package --all”) to cache gems locally and greatly reduce build times.

Key Details:
- The multi-stage Dockerfile has been implemented to leverage caching by separating dependency installation from application code changes.
- The Gemfile now pulls awesome-jekyll-theme from RubyGems, aligning with the necessary dependency on Jekyll (~> 4.3).
- Dependency resolution from RubyGems is contributing to extended build times.
- A proposed approach is to run “bundle package --all” locally to create a vendor/cache directory that is then copied into the Docker image, bypassing repeated online dependency resolution.

Next Steps:
- Finalize and test the vendoring approach to ensure faster, more consistent Docker builds.
- Update the Dockerfile to copy the vendor/cache directory and configure Bundler to use it during the build.
- Monitor build performance and adjust caching settings as needed to further optimize build times.

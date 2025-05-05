# Progress

Update Timestamp: 2025-05-05 07:36 (Europe/Stockholm)

Completed:
- Refactored the Dockerfile into a multi-stage build to leverage caching and speed up dependency resolution.
- Resolved local theme issues by switching the Gemfile to pull awesome-jekyll-theme from RubyGems.
- Updated documentation in configuration files (_config.yml, Gemfile, Dockerfile) to match the current setup.

In Progress:
- Investigating long build times due to dependency resolution from RubyGems.
- Evaluating strategies to vendor gem dependencies using Bundler’s packaging (e.g. running “bundle package --all”) and storing gems in the vendor/cache directory to speed up builds.
- Testing alternative caching and build optimization techniques to avoid re-resolving dependencies on each build.

Pending:
- Finalize and implement the vendoring approach to ensure faster and more consistent Docker builds.
- Monitor build performance and adjust caching settings as needed.

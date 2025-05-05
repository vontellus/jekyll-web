# Multi-Stage Dockerfile for Faster Builds with Proper Local Theme Inclusion

# Builder stage: Install dependencies and build gem layers for caching
FROM ruby:3.1-alpine AS builder
RUN apk add --no-cache build-base nodejs libffi-dev linux-headers git
WORKDIR /srv/jekyll
# Copy Gemfile and Gemfile.lock, and also the local theme directory required for gem resolution
COPY Gemfile Gemfile.lock ./
COPY themes/awesome-jekyll-theme themes/awesome-jekyll-theme
# Install gems; since the theme folder is now present, bundle install can resolve the local gem
RUN bundle config set --local jobs 4 && bundle install
# Copy remaining files of the application
COPY . .

# Final stage: Create a lean runtime image
FROM ruby:3.1-alpine
RUN apk add --no-cache nodejs libffi-dev linux-headers git
WORKDIR /srv/jekyll
# Copy the built application (and cached gems) from the builder stage
COPY --from=builder /srv/jekyll .
EXPOSE 4000
CMD ["bundle", "exec", "jekyll", "serve", "--host", "0.0.0.0"]

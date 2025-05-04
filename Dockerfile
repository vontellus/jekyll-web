FROM ruby:3.1-alpine
RUN apk add --no-cache build-base nodejs
WORKDIR /srv/jekyll
COPY Gemfile* ./
RUN bundle install
COPY . .
EXPOSE 4000
CMD ["bundle", "exec", "jekyll", "serve", "--host", "0.0.0.0"]

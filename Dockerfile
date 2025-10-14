# syntax = docker/dockerfile:1

# Make sure RUBY_VERSION matches the Ruby version in .ruby-version and Gemfile
ARG RUBY_VERSION=3.2.2
FROM registry.docker.com/library/ruby:$RUBY_VERSION-slim as base

# Rails app lives here
WORKDIR /rails
#
# # Set production environment
# ENV RAILS_ENV="production" \
#     BUNDLE_DEPLOYMENT="1" \
#     BUNDLE_PATH="/usr/local/bundle" \
#     BUNDLE_WITHOUT="development"


# Throw-away build stage to reduce size of final image
FROM base as build

# Install packages needed to build gems
RUN apt-get update -qq && \
    apt-get install --no-install-recommends -y build-essential git libpq-dev libvips pkg-config

ENV RAILS_ROOT /var/www/ommo-back
RUN mkdir -p $RAILS_ROOT

# Set working directory
WORKDIR $RAILS_ROOT

# Adding project files
COPY ./ .

# Adding gems
RUN rm -rf node_modules vendor
RUN rm -f tmp/pids/server_1.pid
RUN rm -f tmp/pids/server_2.pid
RUN gem install rails bundler

RUN bundle install --jobs 20 --retry 5
# RUN npm install

# Run and own only the runtime files as a non-root user for security
# RUN useradd rails --create-home --shell /bin/bash && \
#     chown -R rails:rails db log storage tmp
# USER rails:rails

EXPOSE 3000
#CMD ["rails", "server", "-b", "0.0.0.0", "-e", "production" ]
ENTRYPOINT ["bin/docker-entrypoint.sh"]

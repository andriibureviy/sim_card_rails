FROM ruby:3.3.1-alpine

RUN apk update -qq && apk add --no-cache \
    postgresql-client \
    build-base \
    libbz2 \
    gmp-dev \
    readline-dev \
    sqlite-dev \
    openssl-dev \
    zlib-dev \
    curl \
    wget \
    postgresql-dev \
    tzdata \
    nodejs \
    yarn \
    git \
    libc6-compat \
    libxml2-dev \
    libxslt-dev \
    zlib-dev

ENV RAILS_ENV=development \
    BUNDLE_PATH=/gems \
    BUNDLE_JOBS=4 \
    BUNDLE_RETRY=3 \
    BUNDLE_APP_CONFIG=/gems/config

WORKDIR /app

COPY Gemfile Gemfile.lock ./

RUN gem install bundler:2.4.0 && bundle install --jobs=4

COPY . .

EXPOSE 3000

CMD ["bin/rails", "server", "-b", "0.0.0.0"]

FROM ruby:2.5-stretch

# install mysql-client and nodejs
RUN set -ex \
      && apt-get update \
      && apt-get install -y --no-install-recommends \
          mysql-client \
          nodejs \
      && apt-get clean \
      && rm -rf /var/lib/apt/lists/*

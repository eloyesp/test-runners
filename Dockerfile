FROM ruby:2.6-buster

# Add keys for nodesource and yarn
ADD keys/nodesource.asc /etc/apt/trusted.gpg.d/nodesource.asc
ADD keys/yarn.asc       /etc/apt/trusted.gpg.d/yarn.asc

# install mysql-client, nodejs and yarn
RUN set -ex \
      && (echo "deb http://deb.nodesource.com/node_14.x buster main" | tee /etc/apt/sources.list.d/nodesource.list) \
      && (echo "deb http://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list) \
      && apt-get update \
      && apt-get install -y --no-install-recommends \
          default-mysql-client \
          nodejs \
          yarn \
      && apt-get clean \
      && rm -rf /var/lib/apt/lists/*

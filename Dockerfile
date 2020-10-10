FROM ruby:2.6-buster

# install mysql-client, nodejs and yarn
RUN set -ex \
      && (curl -sS https://deb.nodesource.com/gpgkey/nodesource.gpg.key | apt-key add -) \
      && (echo "deb http://deb.nodesource.com/node_12.x buster main" | tee /etc/apt/sources.list.d/nodesource.list) \
      && (curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -) \
      && (echo "deb http://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list) \
      && apt-get update \
      && apt-get install -y --no-install-recommends \
          default-mysql-client \
          nodejs \
          yarn \
      && apt-get clean \
      && rm -rf /var/lib/apt/lists/*

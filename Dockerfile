FROM ruby:2.5-stretch

# install mysql-client, nodejs and yarn
RUN set -ex \
      && (curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -)
      && (echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list)
      && apt-get update \
      && apt-get install -y --no-install-recommends \
          mysql-client \
          nodejs \
          yarn \
      && apt-get clean \
      && rm -rf /var/lib/apt/lists/*
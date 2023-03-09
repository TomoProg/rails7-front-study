FROM ruby:3.2.0
LABEL maintainer="TomoProg"

RUN apt-get update -qq && apt-get install -y \
    build-essential \
    default-mysql-client \
    vim-tiny

# esbuildを使うのに、node.jsとyarnをinstallする必要がある。
RUN curl -fsSL https://deb.nodesource.com/setup_19.x | bash - &&\
apt-get install -y nodejs

RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list
RUN apt-get update && apt-get install -y yarn

RUN mkdir /myapp
WORKDIR /myapp

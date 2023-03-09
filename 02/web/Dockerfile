FROM ruby:3.2.0
LABEL maintainer="TomoProg"

RUN apt-get update -qq && apt-get install -y \
    build-essential \
    default-mysql-client \
    vim-tiny

RUN mkdir /myapp
WORKDIR /myapp

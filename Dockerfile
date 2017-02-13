FROM ruby:2.3.0
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /markovify
WORKDIR /markovify
ADD Gemfile /markovify/Gemfile
ADD Gemfile.lock /markovify/Gemfile.lock
RUN bundle install
ADD . /markovify


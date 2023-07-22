FROM ruby:3.2.2-slim
RUN apt-get update -qq && apt-get install -y nodejs postgresql-client
RUN mkdir /myapp
WORKDIR /myapp
COPY Gemfile /myapp/Gemfile
RUN bundle install
COPY . /myapp
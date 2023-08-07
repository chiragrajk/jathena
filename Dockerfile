# FROM ruby:3-alpine
FROM jruby:latest

RUN apt update && \
    apt install netbase -y

# Create app directory
ENV APP_HOME /usr/src/app
RUN mkdir $APP_HOME
WORKDIR $APP_HOME

# Copy working directory
ADD . $APP_HOME

RUN bundle install

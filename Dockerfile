FROM ruby:2.5.1

RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs ()

RUN mkdir /open-flights

RUN gem install bundler -v 2.0.2

WORKDIR /open-flights

ENV BUNDLER_VERSION 2.0.2

COPY Gemfile Gemfile.lock ./

RUN bundle install

CMD ["bundle", "exec", "rails", "server", "-b", "0.0.0.0"]

FROM ruby:3.1.2

RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs

WORKDIR /app

COPY Gemfile* /app/

RUN bundle install

COPY . /app

CMD ["rails", "server", "-b", "0.0.0.0","-p","3001"]

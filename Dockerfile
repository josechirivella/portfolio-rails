FROM ruby:2.3.1

RUN apt-get update -qq && apt-get install -y nodejs postgresql-client libpq-dev

# RUN apt-get update -qq && apt-get -y upgrade && apt-get install -y build-essential
# RUN apt-get install -y nodejs
# for postgresql
# RUN apt-get install -y libpq-dev

# for nokogiri
# RUN apt-get install -y libxml2-dev libxslt1-dev

ENV APP_HOME /app/portfolio
RUN mkdir -p $APP_HOME
WORKDIR $APP_HOME

COPY Gemfile* $APP_HOME/
RUN bundle install --jobs=8
COPY . $APP_HOME
EXPOSE 3000

CMD ["rails", "server", "-b", "0.0.0.0"]

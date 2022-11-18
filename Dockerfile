FROM ruby:3.1.0-slim
RUN apt-get update -qq && apt-get install -y build-essential libsqlite3-dev nodejs
WORKDIR /myapp
COPY ./src/Gemfile /myapp/Gemfile
COPY ./src/Gemfile.lock /myapp/Gemfile.lock
RUN bundle install
EXPOSE 3000
COPY ./entrypoint.sh /usr/bin
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]

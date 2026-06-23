FROM ruby:4.0-slim-bookworm

EXPOSE 4567
EXPOSE 35729

WORKDIR /usr/src/gems

COPY ./Gemfile /usr/src/gems
COPY ./Gemfile.lock /usr/src/gems

# ADDED: libcurl4 to support html-proofer's parallel link-checking engine
RUN apt-get update && apt-get install -y --no-install-recommends \
    build-essential \
    nodejs \
    libcurl4 \
    && rm -rf /var/lib/apt/lists/*

RUN bundle install
RUN bundle check

WORKDIR /usr/src/docs

CMD [ "bundle", "exec", "--gemfile=/usr/src/gems/Gemfile", "middleman", "server" ]
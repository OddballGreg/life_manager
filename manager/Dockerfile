FROM ruby:2.6.5-alpine as dev
COPY .build-deps /
RUN cat .build-deps | xargs apk add
RUN mkdir -p /src/app
WORKDIR /src/app
ENV BUNDLE_PATH=/bundle \
    BUNDLE_BIN=/bundle/bin \
    GEM_HOME=/bundle
ENV PATH="${BUNDLE_BIN}:${PATH}"

FROM dev AS ci
COPY Gemfile Gemfile.lock ./
RUN bundle install --jobs 20 --retry 5
COPY . ./
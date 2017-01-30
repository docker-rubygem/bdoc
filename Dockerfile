FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=0.3.8

RUN gem install bdoc --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["bdoc"]
CMD ["--help"]

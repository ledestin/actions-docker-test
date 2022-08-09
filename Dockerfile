FROM ruby:3

RUN mkdir /home/app
WORKDIR /home/app

RUN gem install rails bundler
RUN gem install rspec

COPY . /home/app/

ENTRYPOINT "rspec"

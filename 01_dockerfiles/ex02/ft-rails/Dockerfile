FROM ruby

MAINTAINER Bitter Aegon <baegon@student.21-school.ru>

RUN apt-get update -y && \
	apt-get install -y 

RUN apt-get install \
		build-essential \
		libpq-dev \
		nodejs \
		sqlite3 \
		-y

ONBUILD RUN gem install bundler:1.16.2

ONBUILD COPY app /opt/app
ONBUILD WORKDIR /opt/app

ONBUILD EXPOSE 3000
ONBUILD RUN bundle install
ONBUILD RUN bundle update --bundler
ONBUILD RUN bundle exec rake db:migrate
ONBUILD RUN bundle exec rake db:seed

# build:
# docker build -t ft-rails:on-build .

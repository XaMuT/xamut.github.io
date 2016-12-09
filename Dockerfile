FROM ruby:2.3.3

ENV APP_PATH=/srv/xamut.github.io

RUN curl -sL https://deb.nodesource.com/setup_7.x | bash -
RUN apt-get install -y nodejs redis-server
RUN echo 'gem: --no-rdoc --no-ri' > /etc/gemrc
RUN gem install bundler

RUN mkdir $APP_PATH

WORKDIR $APP_PATH

COPY Gemfile .

RUN bundle

EXPOSE 4000

CMD /bin/bash

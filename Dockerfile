FROM ruby:3.1.4
ENV LANG C.UTF-8
ENV TZ Asia/Tokyo
RUN apt-get update -qq \
&& apt-get install -y ca-certificates curl gnupg \
&& mkdir -p /etc/apt/keyrings \
&& curl -fsSL https://deb.nodesource.com/gpgkey/nodesource-repo.gpg.key | gpg --dearmor -o /etc/apt/keyrings/nodesource.gpg \
&& NODE_MAJOR=18 \
&& wget --quiet -O - /tmp/pubkey.gpg https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - \
&& echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list \
&& apt-get update -qq \
&& apt-get install -y build-essential libpq-dev nodejs yarn
RUN mkdir /runteq_graduation_examination
WORKDIR /runteq_graduation_examination
RUN gem install bundler:2.3.17
COPY Gemfile /runteq_graduation_examination/Gemfile
COPY Gemfile.lock /runteq_graduation_examination/Gemfile.lock
COPY yarn.lock /runteq_graduation_examination/yarn.lock
RUN bundle install
RUN yarn install
COPY . /runteq_graduation_examination

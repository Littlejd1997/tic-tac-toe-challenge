FROM ruby
RUN apt-get update
#RUN curl -sL https://deb.nodesource.com/setup_8.x | bash - && curl -sL https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - && echo "deb https://dl.yarnpkg.com/debian/ stable main" |  tee /etc/apt/sources.list.d/yarn.list
RUN apt-get install -y nodejs
RUN gem install bundler
WORKDIR /tictactoe
COPY Gemfile Gemfile
RUN bundle install 
COPY . .
RUN bundle exec  rails db:migrate
CMD bundle exec rails s
EXPOSE 3000

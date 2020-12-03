# Ruby container
FROM ruby:latest

# Install rails and create the rails application path.
RUN					apt-get update -y
RUN					gem install rails && gem install bundler
RUN					apt-get -y install build-essential && apt-get -y install libpq-dev && apt-get -y install nodejs && apt-get -y install sqlite3

#ENV RAILS_ENV=production

# Add the application to the application path.
ONBUILD COPY app /opt/app
ONBUILD WORKDIR /opt/app

# Default Ruby on Rails port number
ONBUILD EXPOSE		3000

# Install all of the required gems
ONBUILD RUN bundle update --bundler
ONBUILD RUN	bundle install --without production

# Runs migrations that have not run yet and runs the db/seed.rb file.
ONBUILD RUN bundle exec rake db:migrate
ONBUILD RUN bundle exec rake db:seed
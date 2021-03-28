FROM ruby:latest

# Throw errors if Gemfile has been modified since Gemfile.lock
RUN bundle config --global frozen 1

ENV RAILS_ROOT /var/www/app

#Create application home. App server will need the pids dir
RUN mkdir -p $RAILS_ROOT/adjust

#Set our working directory inside the image
WORKDIR $RAILS_ROOT/adjust

# Copy ruby project to app dir
COPY  ./src .

# Expose docker port 80
EXPOSE 80

# Trigger ruby webserver
CMD ["/bin/sh"]
ENTRYPOINT ruby http_server.rb -b 0.0.0.0 --port 80
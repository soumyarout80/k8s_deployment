FROM ruby:2.5.5-alpine

# Throw errors if Gemfile has been modified since Gemfile.lock
RUN bundle config --global frozen 1

# Set current working directory `/usr/app`
WORKDIR /adjust

# Copy ruby project to app dir
COPY  src .

# Set current working directory `/usr/app/src`
WORKDIR /adjust/src

# Expose docker port 80
EXPOSE 80

# Trigger ruby webserver
CMD ["ruby","webserver.rb"]
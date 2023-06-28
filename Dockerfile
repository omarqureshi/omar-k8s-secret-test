FROM ruby:3.2.2

# Define custom function directory
ARG FUNCTION_DIR="/var/task"

# Install bundler
RUN gem install bundler

# Copy function code
RUN mkdir -p ${FUNCTION_DIR}
COPY . ${FUNCTION_DIR}

WORKDIR ${FUNCTION_DIR}

# Install bundled gems
RUN bundle install

CMD bundle exec unicorn -c config/unicorn.rb

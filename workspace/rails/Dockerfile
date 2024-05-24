# Base image for Ruby on Rails
FROM ruby:3.2-alpine

# Set working directory
WORKDIR /app

# Copy Gemfile and Gemfile.lock
COPY Gemfile Gemfile.lock ./

# Install dependencies
RUN bundle install --quiet

# Copy application code to container
COPY . .

# Expose Rails port 
EXPOSE 3000

# Command to run Rails application
CMD ["rails", "server", "-p", "3000"]

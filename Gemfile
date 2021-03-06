source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.6'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.2.4', '>= 5.2.4.3'
# Use postgresql as the database for Active Record
gem 'pg', '>= 0.18', '< 2.0'
# Use Puma as the app server
gem 'puma', '~> 3.11'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'mini_racer', platforms: :ruby

# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.2'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use ActiveStorage variant
# gem 'mini_magick', '~> 4.8'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.1.0', require: false

gem 'slim'

# Manage application specific business logic.
gem 'active_interaction', '~> 3.6'

# API
# Version Grape 1.0.0 incorrect works with inheritance Grape endpoint.
# Version Grape 1.0.3 is works.
# Version Grape 1.2.2 is works.
# Version Grape 1.4 testing.
gem 'grape', '~> 1.4'
gem 'grape-entity'
gem 'grape-active_model_serializers'
# gem 'grape-swagger'
gem 'grape-swagger', github: 'ustas-v/grape-swagger', branch: 'master'
gem 'grape-swagger-entity'
gem 'grape-swagger-rails'
gem 'grape-raketasks'
gem 'grape-route-helpers'
# Structured logging
gem 'lograge', '~> 0.5'
gem 'logstash-logger'
gem 'grape_logging', '~> 1.7'
gem 'swagger-docs'
# gem 'doorkeeper'
gem 'hashie-forbidden_attributes' # strong params solution for grape

# Import from batches
gem 'activerecord-import'

# Fast JSON transform object
gem 'oj'
gem 'oj_mimic_json'

# Application setting
gem 'config'

# Builds ActiveRecord named scopes that take advantage of PostgreSQL’s full text search
gem 'pg_search'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]

  gem 'ffaker'
  gem 'fakeweb', require: false
end

group :development do
  # Access an interactive console on exception pages or by calling 'console' anywhere in the code.
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'

  # finds all the N+1 queries you're frivolously dumping into the codebase
  gem 'bullet'

  # Annotation structure models
  gem 'annotate'

  # Add '# frozen_string_literal: true' comments to the top of all your project's .rb files
  gem 'magic_frozen_string_literal'

  gem 'capistrano', '~> 3.11', require: false
  gem 'capistrano-bundler', require: false
  gem 'capistrano-ext', require: false
  gem 'capistrano-faster-assets', require: false
  gem 'capistrano-rails', require: false
  gem 'capistrano-rbenv', require: false
  # gem 'capistrano-rvm', require: false
  gem 'capistrano3-puma', require: false
  gem 'capistrano-rpush', require: false
  gem 'capistrano-sidekiq', require: false
end


# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

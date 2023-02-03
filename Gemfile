source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.2.0"

# Bundle edge Rails instead: gem "rails", github: "rails/rails", branch: "main"
gem "rails", "~> 7.0.4", ">= 7.0.4.2"

# The original asset pipeline for Rails [https://github.com/rails/sprockets-rails]
gem "sprockets-rails"

# Use postgresql as the database for Active Record
gem "pg", "~> 1.1"

# Use the Puma web server [https://github.com/puma/puma]
gem "puma", "~> 5.0"

# Bundle and transpile JavaScript [https://github.com/rails/jsbundling-rails]
gem "jsbundling-rails"

# Hotwire's SPA-like page accelerator [https://turbo.hotwired.dev]
gem "turbo-rails"

# Hotwire's modest JavaScript framework [https://stimulus.hotwired.dev]
gem "stimulus-rails"

# Bundle and process CSS [https://github.com/rails/cssbundling-rails]
gem "cssbundling-rails"
# gem "tailwindcss-rails"

# Build JSON APIs with ease [https://github.com/rails/jbuilder]
gem "jbuilder"

# Use Redis adapter to run Action Cable in production
gem "redis", "~> 4.0"

# Use Kredis to get higher-level data types in Redis [https://github.com/rails/kredis]
# gem "kredis"

# Use Active Model has_secure_password [https://guides.rubyonrails.org/active_model_basics.html#securepassword]
# gem "bcrypt", "~> 3.1.7"

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem "tzinfo-data", platforms: %i[ mingw mswin x64_mingw jruby ]

# Reduces boot times through caching; required in config/boot.rb
gem "bootsnap", require: false

# Use Sass to process CSS
# gem "sassc-rails"

# Use Active Storage variants [https://guides.rubyonrails.org/active_storage_overview.html#transforming-images]
gem "image_processing", "~> 1.2"

group :development, :test do
  # See https://guides.rubyonrails.org/debugging_rails_applications.html#debugging-with-the-debug-gem
  gem "debug", platforms: %i[ mri mingw x64_mingw ]
end

group :development do
  # Use console on exceptions pages [https://github.com/rails/web-console]
  gem "web-console"

  # Add speed badges [https://github.com/MiniProfiler/rack-mini-profiler]
  # gem "rack-mini-profiler"

  # Speed up commands on slow machines / big apps [https://github.com/rails/spring]
  # gem "spring"
end

group :test do
  # Use system testing [https://guides.rubyonrails.org/testing.html#system-testing]
  gem "capybara"
  gem "selenium-webdriver"
  gem "webdrivers"
end


## ADDED GEMS
# Infrastructure and Services
gem 'aws-sdk', '~> 3.1'
gem 'delayed_job_active_record'
gem 'searchkick', '~> 5.1', '>= 5.1.2'
gem 'pg_search', '~> 2.3', '>= 2.3.6'

# Features
gem 'acts_as_votable', '~> 0.14.0'
gem 'acts_as_favoritor', '~> 6.0'
gem 'acts-as-taggable-on', '~> 9.0', '>= 9.0.1'
gem 'flipper', '~> 0.26.0'
gem 'flipper-ui', '~> 0.26.0'
gem 'friendly_id', '~> 5.4', '>= 5.4.2'
gem 'noticed', '~> 1.6'
gem 'pagy', '~> 6.0', '>= 6.0.1'
gem 'inline_svg', '~> 1.8'
gem "local_time", "~> 2.1"
gem "name_of_person", "~> 1.0"
gem 'measured-rails', '~> 2.8', '>= 2.8.2'
gem 'money-rails', '~> 1.15'
gem 'administrate', '~> 0.18.0'
gem 'administrate-field-active_storage', '~> 0.4.2'

# Data generation and processing
gem 'faker', '~> 3.1'
gem 'ancestry', '~> 4.2'
gem 'countries', '~> 5.3', '>= 5.3.1'
gem 'country_select', '~> 8.0', '>= 8.0.1'
gem 'oj', '~> 3.14', '>= 3.14.1'
gem 'csv', '~> 3.2', '>= 3.2.6'

# Auth, Security and Integrity
gem 'devise', '~> 4.8', '>= 4.8.1'
gem 'pundit', '~> 2.3'
gem 'strong_migrations', '~> 1.4', '>= 1.4.2'
gem 'invisible_captcha', '~> 2.0'

# Payments processing and transactions
gem 'pay', '~> 6.3', '>= 6.3.1'
gem "stripe", "~> 8.0"
gem 'receipts', '~> 2.2'

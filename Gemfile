source 'https://rubygems.org'
ruby '2.1.1'

# Postgres and its text-search capability
gem 'pg'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.0.3'

gem 'devise'

# Used to process uploaded images and store them on Amazon S3
gem 'rmagick', '2.13.2'
gem 'paperclip'
gem 'aws-sdk'

# Secure management and deployment of environment variables
gem 'figaro'

# Managing randomizations for submissions
gem 'redis'
gem 'redis-namespace'

# Allows using Sass to develop bootstrap stylings
#gem 'bootstrap-sass'
gem 'autoprefixer-rails'

# Use SCSS for stylesheets

gem 'bootstrap-sass', '~> 3.2.0'
gem 'sass-rails', '>= 3.2'

gem 'font-awesome-rails'

#gem 'sass-rails', '~> 4.0.0'

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'

# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '~> 4.0.0'

# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'

# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 1.2'

# Use sqlite3 as the database for Active Record
group :development do
	gem 'bullet'
	gem 'better_errors'
	gem 'binding_of_caller'
	gem 'meta_request'
	gem 'sqlite3', '1.3.8'
	gem 'rspec-rails', '2.13.1'
	gem 'annotate', ">=2.6.0"
end

group :test do
	gem 'selenium-webdriver', '2.35.1'
	gem 'capybara', '2.1.0'
	gem 'factory_girl_rails', '4.2.1'
	gem 'shoulda-matchers'
	gem 'shoulda-callback-matchers'
	gem 'simplecov', '~> 0.7.1', require: false
end

group :production do
	gem 'rails_12factor', '0.0.2'
end

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', require: false
end

# Use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.1.2'

# Use unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano', group: :development

# Use debugger
# gem 'debugger', group: [:development, :test]

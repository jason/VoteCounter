source 'https://rubygems.org'

gem 'thin'
gem 'rails' 
gem 'bcrypt-ruby', '3.0.1'
gem 'slim-rails'
gem 'devise'
gem 'awesome_print', :require => 'ap'
gem 'jquery-rails'
gem 'newrelic_rpm'
# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  # gem 'therubyracer', :platforms => :ruby

  # Add these gems;;;;;
  gem 'compass-rails';
  gem 'zurb-foundation' 
  gem 'uglifier', '>= 1.0.3';
end

group :production do;
  gem 'pg'
end

group :development, :test do;
  gem 'rspec-rails'
  gem 'guard-rspec'
  gem 'sqlite3'
  gem 'guard-zeus'
  gem 'capybara'
end

group :development do
  gem 'better_errors'
  gem 'binding_of_caller';
  gem 'meta_request';
  gem 'pry-rails'
  gem 'annotate'
end

group :test do
  gem 'rb-fsevent', '0.9.1', :require => false
  gem 'growl'
  gem 'factory_girl_rails'
  gem 'shoulda-matchers'
end
# Gems used only for assets and not required
# in production environments by default.


# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# To use Jbuilder templates for JSON
# gem 'jbuilder'

# Use unicorn as the app server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'debugger'
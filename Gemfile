source 'http://ruby.taobao.org'

gem 'rails', '3.2.13'
gem "bootstrap-sass", '2.0.4'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'

group :development, :test do
  gem 'sqlite3'
  gem 'rspec-rails'
  gem 'guard-rspec'
  gem 'annotate'
end

group :test do
  gem 'capybara','1.1.2'
  gem 'rb-fsevent'
  #gem 'rb-fsevent','0.9.1', :require => false
  #gem 'guard-spork', '1.2.0'
  #gem 'spork', '0.9.2'
  gem 'guard-spork'
  gem 'spork'
  gem 'factory_girl_rails'
  
  #http://about.ac/rails-tutorial-2nd-cn/chapter8.html#sec-8-3
  gem 'cucumber-rails', '1.2.1', require: false
  gem 'database_cleaner', '0.7.0'
end

group :production do
  gem 'pg', '0.12.2'
end


# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  # gem 'therubyracer', :platforms => :ruby

  gem 'uglifier', '>= 1.0.3'
end

gem 'jquery-rails'

# To use ActiveModel has_secure_password
gem 'bcrypt-ruby', '~> 3.0.1'
gem 'faker', '1.0.1'
gem 'will_paginate', '3.0.3'
gem 'bootstrap-will_paginate', '0.0.6'

# To use Jbuilder templates for JSON
# gem 'jbuilder'

# Use unicorn as the app server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'debugger'
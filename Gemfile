source 'https://rubygems.org'

###############
# Application #
###############

ruby '2.0.0'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.0.0'

# Use PostgreSQL as the database for Active Record
gem 'pg'

# Use HAML for views
gem 'haml-rails'

# Use bootstrap-sass for Bootstrap framework
# XXX this should be stable at some point
gem 'bootstrap-sass', '~> 3.0.1.0.rc'

# Use High Voltage to serve static pages
gem 'high_voltage'

# Use Redcarpet to render Markdown
gem 'redcarpet'

# Use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

###############
# Development #
###############

group :development, :test do
  gem 'rspec-rails', '~> 2.0'
  gem 'fuubar'
end

# Use Capistrano for deployment
# gem 'capistrano', group: :development

# Use debugger
# gem 'debugger', group: [:development, :test]

###########
# Serving #
###########

# For Heroku
gem 'rails_12factor', group: :production

# Use Thin as the app server
gem 'thin'

# Use unicorn as the app server
# gem 'unicorn'

# Use SCSS for stylesheets
gem 'sass-rails', '~> 4.0.0'

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

#################
# Documentation #
#################

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', require: false
end

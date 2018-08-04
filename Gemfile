source 'https://rubygems.org'


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
#ruby '2.3.3'
gem 'puma', '3.12.0'
#gem 'rails', '4.2.7.1'
gem 'rails', '4.2.10'
# Use sqlite3 as the database for Active Record
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.1.0'

# fix for attr_accessible and attr_protected
gem 'protected_attributes'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.


# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'
end

group :development do
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
end

gem 'bootstrap'
gem 'bootstrap-sass'
#gem 'compass-rails'
gem 'autoprefixer-rails', '~> 8.6.5'
gem 'bootstrap-switch-rails'
gem 'bootstrap-generators'
gem 'font-awesome-rails'
# GUID generation
gem 'uuid'
# Icons
gem 'entypo-rails'

gem 'bourbon'
gem 'devise'
gem 'devise-i18n'

gem 'oauth2'
gem 'omniauth'
gem 'omniauth-twitter'
gem 'omniauth-facebook'
gem 'omniauth-vkontakte'
gem 'omniauth-instagram'
gem 'omniauth-linkedin'
gem 'omniauth-google-oauth2'
gem 'devise_lastseenable'
gem 'devise-token_authenticatable'

# Background processing
gem 'sidekiq'
gem 'sinatra'
# Scheduled processing
gem 'sidetiq'

gem 'pg', '~> 0.21'
gem 'therubyracer', :platform=>:ruby

# Internationalization (aka i18n)
gem 'rails-i18n'
gem 'http_accept_language'
gem 'globalize'
gem 'jsonb_translate'
gem 'route_translator'
gem 'to_lang'
# JavaScript
gem 'bower-rails'
gem 'backbone-on-rails'
gem 'handlebars_assets'
gem 'sprockets-rails', :require => 'sprockets/railtie'
gem 'jquery-rails'
gem 'jquery-ui-rails'
gem 'jquery-turbolinks'
gem 'js-routes'
#gem 'fullpagejs-rails', '~> 2.7', '>= 2.7.5.1'

source 'https://rails-assets.org' do
  gem 'rails-assets-jquery'
  #gem 'rails-assets-bootstrap'
  gem 'rails-assets-angular'
  gem 'rails-assets-leaflet'
  # Should be kept in sync with jquery-rails
  gem 'rails-assets-markdown-it'
  gem 'rails-assets-markdown-it-hashtag'
  gem 'rails-assets-markdown-it-sanitizer'
  gem 'rails-assets-markdown-it--markdown-it-for-inline'
  gem 'rails-assets-markdown-it-sub'
  gem 'rails-assets-markdown-it-sup'
  gem 'rails-assets-highlightjs'
  gem 'rails-assets-typeahead.js'
  # jQuery plugins
  gem 'rails-assets-jquery.documentsize'
  gem 'rails-assets-jquery.isinview'
  gem 'rails-assets-animate-css'
  gem 'rails-assets-wow'
  gem 'rails-assets-jquery-mousewheel'
  gem 'rails-assets-jquery-placeholder'
  gem 'rails-assets-jquery-textchange'
  gem 'rails-assets-jakobmattsson--jquery-elastic'
  gem 'rails-assets-autosize'
end

gem 'bootstrap-wysihtml5-rails'
gem 'tinymce-rails'
gem 'select2-rails'
# file uploads + S3
gem 'refile', require: 'refile/rails'
gem 'refile-mini_magick'
gem 'refile-postgres'
#gem "refile-s3"
# Turbolinks makes following links in your web application faster.
# Read more: https://github.com/rails/turbolinks
#gem 'turbolinks'

# URIs and HTTP
gem 'addressable', require: 'addressable/uri'
gem 'faraday'
gem 'faraday_middleware'
gem 'faraday-cookie_jar'
gem 'typhoeus'
# Views
gem 'haml'
gem 'haml-rails'
gem 'haml-contrib'
gem 'simple_form'
gem 'jquery-minicolors-rails'
# Mail
gem 'markerb'
gem 'messagebus_ruby_api'
# Parsing
gem 'nokogiri'
gem 'redcarpet'
#gem 'twitter-text'
gem 'roxml'
gem 'ruby-oembed'
gem 'open_graph_reader'
gem 'gravtastic'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', group: :doc
gem 'annotate', :groups => [:development]
gem 'kramdown', :groups => [:development], :require => false
gem 'railroady', :groups => [:development, :test]
# SEO
gem 'acts_as_opengraph'
gem "dynamic_sitemaps"

# gem 'passenger', '~> 5.0', '>= 5.0.26', require: "phusion_passenger/rack_handler"
# Prevent occasions where minitest is not bundled in
# packaged versions of ruby. See following issues/prs:
# https://github.com/gitlabhq/gitlabhq/issues/3826
# https://github.com/gitlabhq/gitlabhq/pull/3852
# https://github.com/discourse/discourse/pull/238
gem 'minitest'

group :development do
  gem 'better_errors'
  gem 'foreman'
  gem 'guard-bundler'
  gem 'guard-rails'
  gem 'guard-rspec'
  gem 'html2haml'
  gem 'hub', :require=>nil
  gem 'rails_apps_pages'
  gem 'rails_apps_testing'
  gem 'rails_layout'
  gem 'rb-fchange', :require=>false
  gem 'rb-fsevent', :require=>false
  gem 'rb-inotify', :require=>false
  gem 'spring-commands-rspec'
end

group :development, :test do
  gem 'factory_girl_rails'
  gem 'faker'
  gem 'pry-rails'
  gem 'pry-rescue'
  gem 'rspec-rails'
  gem 'rubocop'
end

group :test do
  gem 'capybara'
  gem 'database_cleaner'
  gem 'launchy'
  gem 'selenium-webdriver'
end


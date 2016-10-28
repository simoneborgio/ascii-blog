source 'https://rubygems.org'


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.0.0', '>= 5.0.0.1'
# Use sqlite3 as the database for Active Record
gem 'sqlite3'
# Use Puma as the app server
gem 'puma', '~> 3.0'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.2'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 3.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platform: :mri
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'web-console'
  gem 'listen', '~> 3.0.5'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]


# ============= #
# Customization #
# ============= #

# RVM configuration
#ruby=2.3.0
#ruby-gemset=default

# Global configurations defined in configuration/application.yml
gem 'figaro', '~> 1.1', '>= 1.1.1'

# Full text search
# gem 'sunspot_rails', '~> 2.2', '>= 2.2.6'
# bundled Solr distribution for use with Sunspot (this distribution is well suited to development and testing)
# gem 'sunspot_solr', '~> 2.2', '>= 2.2.6'

# AsciiDoc text processor
gem 'asciidoctor', '~> 1.5', '>= 1.5.5'

# HAML templating engine
gem 'haml', '~> 4.0', '>= 4.0.7'

# Bootstrap SASS
gem 'bootstrap-sass', '~> 3.3', '>= 3.3.7'
gem 'autoprefixer-rails'

# Font awesome
gem 'font-awesome-rails', '~> 4.7'
gem 'font-awesome-sass', '~> 4.7'

# JavaScript date, time and calendar
gem 'momentjs-rails', '~> 2.15', '>= 2.15.1'
gem 'bootstrap3-datetimepicker-rails', '~> 4.17', '>= 4.17.42'

# JavaScript toast notifications
gem 'toastr-rails', '~> 1.0', '>= 1.0.3'

# Google analytics
gem 'google-analytics-rails', '~> 1.1'

# Slack notifier
gem 'slack-notifier', '~> 1.5', '>= 1.5.1'

# Sitemsp generator
gem 'sitemap_generator', '~> 5.2'

group :development do
  # No asset spam in console
  # gem 'quiet_assets', '~> 1.1'
end

group :production do
  # PostgreSQL
  gem 'pg', '~> 0.19.0'

  # PostgreSQL full text search
  gem 'textacular', '~> 4.0', '>= 4.0.1'

  # MySQL
  gem 'mysql2', '~> 0.4.5'
end
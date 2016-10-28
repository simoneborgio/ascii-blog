# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...



## Bundler for development

    bundle install --without production

## Production environment

Target database is PostgreSQL: articles full text search is currently implemented only for this database.

Precompiling assets:

    RAILS_ENV=production bundle exec rake assets:precompile
    
Refresh sitemap:

    RAILS_ENV=production rake sitemap:refresh

## TODO

* Restore Google analytics
* Link to Skype
* Article comments
* Database-agnostic full text search
* Use user's time to set article release_date instead of UTC
* Tests

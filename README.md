[![Build Status](https://travis-ci.org/windurisky/librariz.svg?branch=master)](https://travis-ci.org/windurisky/librariz)

# LIBRARIZ

This very simple rails app is intended as a step stone of learning rails, giving basic ideas of how rails work as an API.

## Pre-requisites

* Ruby version 2.4.1 ++

* Rails version 5.1.5 ++

* MySql Server 5.7.21 ++

## Initial Configuration

* Edit credentials of mysql in config/database.yml accordingly

## Go to terminal and execute this in your project directory
* `gem install bundler # this will install bundler gem` 

* `bundle install # this will let bundler to install the other gems written in Gemfile`

* `rake db:create # this will create the database`

* `rake db:migrate # this will generate the tables`

* `rake db:seed # this will generate dummy data`

* `rails s -p 7000 # this will start rails app on localhost port 7000`

## Testing
* Use postman to test the app on URL `GET http://localhost:7000/books/1`

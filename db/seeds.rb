require './config/environment'

DatabaseCleaner.clean_with(:truncation)
load 'db/seeds/books.rb'
load 'db/seeds/members.rb'
load 'db/seeds/rents.rb'

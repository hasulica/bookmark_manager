require './app/app.rb'
require 'data_mapper'

DataMapper.setup(:default, ENV['DATABASE_URL'] || "postgres://localhost/bookmark_manager_#{ENV['RACK_ENV']}")
run BookmarkManager

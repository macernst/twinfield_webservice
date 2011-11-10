require 'rubygems'
require 'bundler'
Bundler.require

require './webservice'

if ENV['RACK_ENV'] == "production"
  log = File.new("log/production.log", "a")
  STDOUT.reopen(log)
  STDERR.reopen(log)
end

run Twinfield

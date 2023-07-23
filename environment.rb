require 'rubygems'
require 'bundler/setup'
require 'dotenv'
require 'sequel'

require 'sinatra' unless defined?(Sinatra)

Dotenv.load

configure do
    DB = Sequel.sqlite
    Dir.glob('./lib/*.rb').each do |lib| require lib end
end

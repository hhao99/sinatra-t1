require 'sinatra'
require 'sinatra/reloader'  
configure :development do
    register Sinatra::Reloader
end
get '/' do
    "Hello World!"
end
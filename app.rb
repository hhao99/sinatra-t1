require 'sinatra'
require 'sinatra/reloader'  
require './environment'
configure :development do
    register Sinatra::Reloader
end
get '/' do

    erb :index, :layout => :layout
end

get '/about' do
    erb :about, :layout => :layout
end
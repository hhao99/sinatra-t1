
require_all './models'

configure :development do
    register Sinatra::Reloader
end

get '/' do
    @users = User.all
    erb :index, :layout => :layout
end

get '/about' do
    erb :about, :layout => :layout
end
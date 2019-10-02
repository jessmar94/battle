require 'sinatra/base'

# set :session_secret, 'super secret'

class Battle < Sinatra::Base
  enable :sessions
# Get the form on the home page, as designed in the index.erb file.
  get '/' do
    erb :index
  end

# Return the names and format as designed in the play.erb file.
  post '/names' do
    session[:player_1_name] = params[:player_1_name]
    session[:player_2_name] = params[:player_2_name]
    redirect '/play'
  end

  get '/play' do
    @player_1_name = session[:player_1_name]
    @player_2_name = session[:player_2_name]
    erb :play
  end

  get '/attack' do
    @player_1_name = session[:player_1_name]
    @player_2_name = session[:player_2_name]
    erb :attack
  end

  run! if app_file == $0
end

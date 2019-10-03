require 'sinatra/base'
require_relative 'lib/player'

class Battle < Sinatra::Base
  enable :sessions
# Get the form on the home page, as designed in the index.erb file.
  get '/' do
    erb :index
  end

# Return the names and format as designed in the play.erb file.
  post '/names' do
    session[$Player.new(name)] = params[:player_1_name]
    session[$Player.new(name)] = params[:player_2_name]
    redirect '/play'
  end

  get '/play' do
    @player_1_name = $Player.new(name)
    @player_2_name = $Player.new(name)
    erb :play
  end

  get '/attack' do
    @player_1_name = $Player.new(name)
    @player_2_name = $Player.new(name)
    erb :attack
  end

  run! if app_file == $0
end

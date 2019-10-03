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
    $player_1 = Player.new(params[:player_1_name])
    $player_2 = Player.new(params[:player_2_name])
    redirect '/play'
  end

  get '/play' do
    @player_1_name = $player_1.name
    @player_2_name = $player_2.name
    erb :play
  end

  get '/attack' do
    @player_1_name = $player_1.name
    @player_2_name = $player_2.name
    @player_2_points = Game.new.attack($player_2)
    erb :attack
  end

  run! if app_file == $0
end

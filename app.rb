require 'sinatra/base'
require './lib/player'
require './lib/game'

class Battle < Sinatra::Base
  enable :sessions

# Get the form on the home page, as designed in the index.erb file.
  get '/' do
    erb :index
  end

# Return the names and format as designed in the play.erb file.
  post '/names' do
    player_1 = Player.new(params[:player_1_name])
    player_2 = Player.new(params[:player_2_name])
    $game = Game.new(player_1, player_2)
    redirect '/play'
  end

  get '/play' do
    @game = $game
    erb :play
  end

  get '/attack' do
    @game = $game
    @game.attack(@game.player_2)
    erb :attack
  end

  run! if app_file == $0
end

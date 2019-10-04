require 'sinatra/base'
require './lib/player'
require './lib/game'

class Battle < Sinatra::Base
  enable :sessions

  before do
    @game = Game.instance
  end

# Get the form on the home page, as designed in the index.erb file.
  get '/' do
    erb :index
  end

# Return the names and format as designed in the play.erb file.
  post '/names' do
    player_1 = Player.new(params[:player_1_name])
    player_2 = Player.new(params[:player_2_name])
    @game = Game.create(player_1, player_2)
    redirect '/play'
  end

  get '/play' do
    erb :play
  end

  get '/attack' do
    @game.attack(@game.defender)
    erb :attack
  end

  post '/switch_turn' do
    @game.switch_turn
    redirect '/play'
  end

  get '/game_over' do
    erb :game_over
  end

  run! if app_file == $0
end

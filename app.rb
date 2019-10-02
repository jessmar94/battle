require 'sinatra/base'

# set :session_secret, 'super secret'

class Battle < Sinatra::Base
# Get the form on the home page, as designed in the index.erb file. 
  get '/' do
    erb :index
  end
# Return the names and format as designed in the play.erb file.
  post '/names' do
    @player_1_name = params[:player_1_name]
    @player_2_name = params[:player_2_name]
    erb :play
  end

  run! if app_file == $0
end

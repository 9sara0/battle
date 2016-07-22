require 'sinatra/base'
require_relative 'lib/player'
require_relative 'lib/game'

class Battle < Sinatra::Base

  enable :sessions


  before do
    @game = Game.game_instance
  end


  get '/' do
     erb :index
   end

  post '/names' do
    @player_1 = Player.new(params[:player_1_name])
    @player_2 = Player.new(params[:player_2_name])
    @game = Game.create_game(@player_1, @player_2)
    redirect '/play'
  end


  get '/play' do
    erb :play
  end

  post '/switch_turns' do
    @game.switch_turns
    redirect ('/play')
  end

  get '/attack' do
    @game.attack(@game.opponent_of(@game.current_turn))
    erb :attack
  end


  # start the server if ruby file executed directly
  run! if app_file == $0
end

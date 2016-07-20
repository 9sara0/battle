require 'sinatra/base'

class Battle < Sinatra::Base
  get '/' do
    'Hello Battle!'
  end

<<<<<<< HEAD
  # start the server if ruby file executed directly
=======
  get '/names' do
    erb(:index)
  end

  post '/names' do
    @player_1_name = params[:player_1_name]
    @player_2_name = params[:player_2_name]
    erb(:play)
  end




>>>>>>> 9dc8ea53e42911981c00d7214d86a2be198d448b
  run! if app_file == $0
end

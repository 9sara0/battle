require 'sinatra/base'

class Batlle < Sinatra::Base
  get '/' do
    'Hello Battle'
  end

  run! if app_file == $0
end

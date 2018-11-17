require 'sinatra/base'
require './lib/player'

class Rps < Sinatra::Base

  get "/" do 
    erb :index
  end

  post "/names" do
    player_1 = Player.new(params[:player_1_name])
    player_2 = Player.new(params[:player_2_name])
    redirect "/play"
  end

  get "/play" do 
    erb :play
  end

end
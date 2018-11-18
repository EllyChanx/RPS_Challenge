require 'sinatra/base'
require './lib/player'

class Rps < Sinatra::Base
  enable :sessions

  get "/" do 
    erb :index
  end

  post "/names" do
    session[:player_1_name] = Player.new(params[:player_1_name])
    session[:player_2_name] = Player.new(params[:player_2_name])   
    redirect "/play"
  end

  get "/play" do 
    @player_1 = session[:player_1_name]
    @player_2 = session[:player_2_name]
    erb :play
  end

  post "/choice" do
    session[:player_1_action] = params[:player_1_action]
    session[:player_2_action] = params[:player_2_action]
    redirect "/result"
  end

  get "/result" do
    @player_1_action = session[:player_1_action]
    @player_2_action = session[:player_2_action]
    erb :result
  end

end
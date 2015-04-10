require 'sinatra/base'
require './lib/player'
require './lib/game'
Dir[File.dirname(__FILE__) + '../lib/*.rb'].each {|file| require file}

class RPS < Sinatra::Base

  enable :sessions
  GAME = Game.new
  set :views, Proc.new { File.join(root, "..", "views")}

  get '/' do
    erb :index
  end

  get '/game' do
    redirect '/'
  end

  post '/game' do
    if params[:choice]
      player_one = Player.new(params[:name])
      player_two = Player.new("Computer")
      @player_one = params[:choice]
      @player_two = player_two.choice
      @result = GAME.outcome @player_one, @player_two
      erb(:result)
    else
      session[:name] = params[:name] if params[:name]
      erb :game
    end
  end

  get '/result' do
    redirect '/'
  end

  post '/result' do
    erb :result
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end

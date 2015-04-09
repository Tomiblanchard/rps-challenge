require 'sinatra/base'
Dir[File.dirname(__FILE__) + '../lib/*.rb'].each {|file| require file}

class RPS < Sinatra::Base

  enable :sessions
  set :views, Proc.new { File.join(root, "..", "views")}

  get '/' do
    erb :index
  end

  get '/game' do
    redirect '/'
  end

  post '/game' do
    @player = Player.new(params[:name])
    @cpu = Player.new('Cpu')
    @player.choice = params[:choice]
    cpu.cpu_choice
    @game = Game.new(player, cpu)
    @result = game.winning
    erb :game
  end

  post '/result' do
    erb :result
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end

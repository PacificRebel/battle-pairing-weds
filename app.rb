require 'sinatra/base'
require_relative 'lib/player'
require_relative 'lib/game'

class Battle < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

post '/names' do
    p params
    player1 = Player.new(params[:Player1])
    player2 = Player.new(params[:Player2])
    $game = Game.new(player1, player2)
    redirect '/play'
  end

get '/play' do
  @Player1 = $game.player1
  @Player2 = $game.player2
  erb :play
end

get '/attack' do
  @Player1 = $game.player1
  @Player2 = $game.player2
  $game.p1_attack_p2
  erb :attack
end

  run! if app_file == $0
end

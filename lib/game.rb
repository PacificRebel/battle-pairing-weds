require_relative 'player'

class Game

  attr_reader :player1, :player2, :current_turn

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @current_turn = player1
  end

  def attack

    if @current_turn == @player1
      p1_attack_p2
      @current_turn = @player2
    else
      p2_attack_p1
      @current_turn = @player1
    end

  end

  def p1_attack_p2
    @player2.lose_health
  end

  def p2_attack_p1
    @player1.lose_health
  end

end

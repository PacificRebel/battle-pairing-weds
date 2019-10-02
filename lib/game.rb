require_relative 'player'

class Game

  attr_reader :player1, :player2

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
  end

  def p1_attack_p2
    @player2.lose_health
  end

  def p2_attack_p1
    @player1.lose_health
  end

end

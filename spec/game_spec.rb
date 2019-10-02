require 'game'

describe Game do

  let(:player1) { double :player1 }
  let(:player2) { double :player2 }

  subject(:game) {described_class.new(player1, player2)}

  describe '#p1_attack_p2' do
    it 'reduces p2 health by 10 when p1 attacks' do
      expect(player2).to receive(:lose_health)
      game.p1_attack_p2
  end
 end
end

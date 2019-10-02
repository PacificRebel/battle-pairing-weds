require 'player'

describe Player do

  subject(:player) {described_class.new("Khaleesi")}

  it 'knows its name' do

    expect(player.name).to eq "Khaleesi"
  end

  it "reduces player2's hp by 10" do

    expect{ player.lose_health }.to change { player.hp }.by(-10)

  end


end

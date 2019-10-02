require 'player'

describe Player do

  subject(:player) {described_class.new("Khaleesi")}

  it 'knows its name' do

    expect(player.name).to eq "Khaleesi"
  end
end

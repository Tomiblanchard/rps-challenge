require 'player'

describe Player do
  let(:player) { described_class.new 'Tomi' }

  context 'when created' do

    it 'has a name' do
      expect(player.name).to eq 'Tomi'
    end

  end

  context 'after been created' do

    it 'can choose a move' do
      player.choice(:rock)
      expect(player.move). to eq :rock
    end

  end
end

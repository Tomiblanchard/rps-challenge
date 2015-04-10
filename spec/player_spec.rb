require 'player'

describe Player do
  let(:player1) { Player.new ('Tomi') }
  let(:player2) { Player.new ('Computer') }

  context 'when initialized' do

    it 'can have a name' do
      expect(player1.name).to eq 'Tomi'
      expect(player2.name).to eq 'Computer'
    end
  end

  context 'defined as computer' do

    it 'can make a random choice' do
      expect(Player::GAME_OPTIONS).to receive(:sample).and_return("Rock")
      expect(player2.choice).to eq("Rock")
    end
  end
end

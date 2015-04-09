require 'game'

describe Game do
  let(:player) { double :player }
  let(:cpu) { double :cpu }
  let(:game) { described_class.new player, cpu }

  it 'Has two players assigned when created' do
    expect(game.instance_variable_get(:@player)).to eq player
    expect(game.instance_variable_get(:@cpu)).to eq cpu
  end

  it 'Can find out who the winner is' do
    player = 'Player'
    cpu = 'Cpu'
    expect(player).to receive(:choice).and_return("Rock")
    expect(cpu).to receive(:cpu_choice).and_return("Paper")
    player.choice
    cpu.cpu_choice
  end
end

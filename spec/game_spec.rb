require 'game'

describe Game do
  let(:player1) { double :player1 }
  let(:player2) { double :player2 }
  let(:game) { Game.new player1, player2 }

  it 'knows who player 1 is' do
    expect(game.player1).to eq player1
  end

  it 'knows who player 2 is' do
    expect(game.player2).to eq player2
  end

  it 'knows that player 1\'s paper beats player 2\'s rock' do
    expect(game.outcome "Paper", "Rock").to eq "win"
  end

  it 'knows that player 1\'s rock beats player 2\'s scissors' do
    expect(game.outcome "Rock", "Scissors").to eq "win"
  end

  it 'knows that player 1\'s scissors beats player 2\'s paper' do
    expect(game.outcome "Scissors", "Paper").to eq "win"
  end

  it 'knows that player 1\'s paper loses to player 2\'s scissors' do
    expect(game.outcome "Paper", "Scissors").to eq "lose"
  end

  it 'knows that player 1\'s rock loses to player 2\'s paper' do
    expect(game.outcome "Rock", "Paper").to eq "lose"
  end

  it 'knows that player 1\'s scissors loses to player 2\'s rock' do
    expect(game.outcome "Scissors", "Rock").to eq "lose"
  end

  it 'knows that player 1\'s paper ties player 2\'s paper' do
    expect(game.outcome "Paper", "Paper").to eq "tie"
  end

  it 'knows that player 1\'s rock ties player 2\'s rock' do
    expect(game.outcome "Rock", "Rock").to eq "tie"
  end

  it 'knows that player 1\'s scissors ties player 2\'s scissors' do
    expect(game.outcome "Scissors", "Scissors").to eq "tie"
  end
end

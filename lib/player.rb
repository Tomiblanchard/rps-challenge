class Player
  attr_reader :name, :choice
  GAME_OPTIONS = %w(rock paper scissors)

  def initialize name
    @name = name
  end

  def choice
    @choice = GAME_OPTIONS.sample
  end
end

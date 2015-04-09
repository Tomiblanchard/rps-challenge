class Player
  attr_reader :name, :move
  attr_writer :cpu_choice
  attr_accessor :choice

  def initialize name
    @name = name
  end

  def choice(move)
    @move = move.to_sym
  end

  def cpu_choice
    @cpu_choice = %w(rock paper scissors).sample
  end
end

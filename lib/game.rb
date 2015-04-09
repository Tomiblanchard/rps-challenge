class Game

  def initialize(player, cpu)
    @player = player
    @cpu = cpu
  end

  def winner?(choice, cpu_choice)
    if player.choice == cpu.cpu_choice
      "It's a draw!"
    elsif player.choice == "scissors" && cpu.cpu_choice == "paper"
      "You have won!"
    elsif player.choice == "paper" && cpu.cpu_choice == "rock"
      "You have won!"
    elsif player.choice == "rock" && cpu.cpu_choice == "scissors"
      "You have won!"
    else
      "You lost!"
    end
  end
end

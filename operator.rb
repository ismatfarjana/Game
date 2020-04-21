class Operator
  attr_reader :game 
  def initialize(game:)
    @game = game
  end
  def play_round
    p "guess a number between 1 to 10"
    input = gets.chomp.to_i
    compus_guess = rand(10)
    p "Your guess: #{input} computrons guess: #{compus_guess} "
    input == compus_guess ? (p "It is a Draw!") : 
    (input < compus_guess ? (p "Computron wins!" ): (p "You win"))
  end

  def new_round
    if game.round_left? 
      play_round
      game.next_round
      new_round
    else
      p "No rounds left"
    end
  end
end

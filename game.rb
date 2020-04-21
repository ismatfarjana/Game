class Game
  attr_reader :rounds
  def initialize(rounds:)
    @rounds = rounds
  end

  def round_left?
    rounds != 0 
  end

  def next_round
    @rounds = (@rounds - 1)
  end
end

# game = Game.new(round: round)
# game.round_left? will return false if no round left
# game.round_left? will return true if round left
# game.next_round will reduce round count 

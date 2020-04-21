class Game
  attr_reader :rounds
  def initialize(rounds:)
    @rounds = rounds
  end

  def round_finished?
    rounds == 0 
  end

  def next_round
    @rounds = (@rounds - 1)
  end
end

# game = Game.new(round: round)
# game.round_finished? will return true if no round left
# game.round_finished? will return false if round left
# game.next_round will reduce round count 

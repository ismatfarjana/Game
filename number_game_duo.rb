require_relative 'game'
require_relative 'operator'

rounds = ARGV.first.to_i
ARGV.clear
game = Game.new(rounds: rounds)
operator = Operator.new(game: game)


p "welcome"

operator.new_round

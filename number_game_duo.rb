require_relative 'game'
require_relative 'operator'
require_relative 'user'
require_relative 'leaderboard'


rounds = ARGV.first.to_i
ARGV.clear
p "Welcome"
p "What is your name? "
name = gets.chomp
user = User.new(name: name, sign: 'X')
bot = User.new(name: 'Computer', sign: 'O')
leaderboard = Leaderboard.new(users: [user, bot])
game = Game.new(rounds: rounds)
operator = Operator.new(game: game, user: user, bot: bot, leaderboard: leaderboard)




operator.new_round
p operator.print_result

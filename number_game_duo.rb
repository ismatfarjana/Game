require_relative 'game.rb'

rounds = ARGV.first.to_i
ARGV.clear
game = Game.new(rounds: rounds)

p "welcome"

def result
  p "guess a number between 1 to 10"
  input = gets.chomp.to_i
  compus_guess = rand(10)
  p "Your guess: #{input} computrons guess: #{compus_guess} "
  input == compus_guess ? (p "It is a Draw!") : 
  (input < compus_guess ? (p "Computron wins!" ): (p "You win"))
end 


result
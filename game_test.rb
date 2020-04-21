require 'minitest/autorun'
require 'minitest/pride'
require_relative 'game'

# Common test data version: 1.7.0 cacf1f1
class GameTest < Minitest::Test
  def test_rounds
    # skip
    game = Game.new(rounds: 3)
    assert_equal 3, game.rounds 
  end

   def test_round_finished?
    game = Game.new(rounds: 3)
    assert_equal false, game.round_finished?
    
    game1 = Game.new(rounds: 0)
    assert_equal true, game1.round_finished?
   end

   def test_next_round
    game = Game.new(rounds: 3)
    game.next_round
    assert_equal 2, game.rounds 
   end
  
end

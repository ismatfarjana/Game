require 'minitest/autorun'
require 'minitest/pride'
require_relative 'leaderboard'
require_relative 'user'

# Common test data version: 1.7.0 cacf1f1
class LeaderboardTest < Minitest::Test
  def test_top_scored_users
    user1  = User.new(name: 'Isaba', sign: 'X', scores: 9)
    user2  = User.new(name: 'Tanim', sign: 'Y', scores: 5)
    user3  = User.new(name: 'Dipty', sign: 'Z', scores: 3)
    leaderboard = Leaderboard.new(users: [user2, user1, user3])

    assert_equal [user1, user2, user3], leaderboard.top_scored_users 
  end

  def test_winners_name
    user1  = User.new(name: 'Isaba', sign: 'X', scores: 9)
    user2  = User.new(name: 'Tanim', sign: 'Y', scores: 5)
    user3  = User.new(name: 'Dipty', sign: 'Z', scores: 3)
    leaderboard = Leaderboard.new(users: [user2, user1, user3])

    assert_equal 'Isaba', leaderboard.winners_name
  end

  def test_has_winner?
    user1  = User.new(name: 'Isaba', sign: 'X', scores: 9)
    user2  = User.new(name: 'Tanim', sign: 'Y', scores: 5)
    user3  = User.new(name: 'Dipty', sign: 'Z', scores: 3)
    leaderboard = Leaderboard.new(users: [user2, user1, user3])

    assert_equal true, leaderboard.has_winner? 

    user4  = User.new(name: 'Isaba', sign: 'X', scores: 9)
    user5  = User.new(name: 'Tanim', sign: 'Y', scores: 9)
    leaderboard1 = Leaderboard.new(users: [user4, user5])

    assert_equal false, leaderboard1.has_winner? 
  end

  
end
require 'minitest/autorun'
require 'minitest/pride'
require_relative 'user'

#initialize user with name, sign, scores.

# Common test data version: 1.7.0 cacf1f1
class UserTest < Minitest::Test
  def test_name
    user = User.new(name: 'Isabela', sign: 'X')

    assert_equal 'Isabela', user.name
  end

  def test_sign
    user = User.new(name: 'Isabela', sign: 'X')

    assert_equal 'X', user.sign
  end

  def test_scores_default
    user = User.new(name: 'Isabela', sign: 'X')

    assert_equal 0, user.scores
  end

  def test_scores
    user = User.new(name: 'Isabela', sign: 'X', scores: 9)

    assert_equal 9, user.scores
  end

  def test_increase_score
    user = User.new(name: 'Isabela', sign: 'X', scores: 9)
    user.increase_scores

    assert_equal 10, user.scores
  end
end




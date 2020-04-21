# @params users [Array]



class Leaderboard
  attr_reader :users
  def initialize(users:)
    @users = users
  end

  def top_scored_users
    users.sort_by {|user| user.scores}.reverse
  end

  def winners_name
    top_scored_users.first.name
  end

  def has_winner?
    scores = users.map {|user| user.scores}
    scores.uniq.length != 1
  end
end

# candycrash_players = [player1, player2]
# leader_board = LeaderBoard.new(users: candycrush_players)
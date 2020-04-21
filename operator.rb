class Operator
  attr_reader :game, :user, :bot, :leaderboard
  def initialize(game:, user:, bot:, leaderboard:)
    @game = game
    @user = user
    @bot = bot
    @leaderboard = leaderboard
  end
  def play_round
    p "guess a number between 1 to 10"
    users_guess = gets.chomp.to_i
    bot_guess = rand(10)
    p "Your guess: #{users_guess} computrons guess: #{bot_guess} "
    
    if users_guess == bot_guess
      "Draw!"
    elsif  users_guess < bot_guess
      bot.increase_scores
      print_scores
    else  users_guess > bot_guess
      user.increase_scores
      print_scores
    end  
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

  def print_scores
   # p "#{user.name} score: #{user.scores}"
   # p "#{bot.name} score: #{bot.scores}"
   leaderboard.top_scored_users.map do |user|
    p "#{user.name} score: #{user.scores}"
   end
  end

  def print_result
    if leaderboard.has_winner?
       "The winner is #{leaderboard.winners_name}."
    else
       'The match is Draw!!'
    end
  end
end

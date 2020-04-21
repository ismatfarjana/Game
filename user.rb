class User
  attr_reader :name, :sign, :scores
  def initialize(name:, sign:, scores: 0)
    @name = name
    @sign = sign 
    @scores = scores
  end

  def increase_scores
    @scores = @scores + 1 
  end
  

end
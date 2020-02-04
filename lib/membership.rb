class Membership
  attr_reader :gym, :cost, :lifter
  @@all = []
  def initialize(gym, cost, lifter)
    @gym = gym
    @cost = cost
    @lifter = lifter
    @@all << self
  end

  def self.all
    @@all 
  end

end

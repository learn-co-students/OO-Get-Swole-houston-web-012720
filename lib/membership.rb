class Membership
  attr_reader :cost, :gym, :lifter

  @@all = []

  def initialize(lifter, gym, cost)
    @gym = gym 
    @lifter = lifter
    @cost = cost
    @@all << self
  end

  def self.all 
    @@all
  end
  
end

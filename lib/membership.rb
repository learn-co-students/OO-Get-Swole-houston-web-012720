class Membership
  attr_reader :cost, :gym, :lifter

  @@all = []

  def initialize(gym, lifter, cost)
    @cost = cost
    @gym = gym
    @lifter = lifter
    @@all << self
    puts "#{lifter.name} join #{gym.name} for #{cost}"
  end

  def self.all
    @@all
  end
end

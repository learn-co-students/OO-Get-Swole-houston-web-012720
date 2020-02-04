class Gym
  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def memberships
    Membership.all.select {|g| g.gym == self}
  end 

  def lifters
    memberships.map {|g| g.lifter}
  end 

  def lifters
    memberships.map {|g| g.lifter.name}
  end 

  def combined_lift_total
    memberships.sum {|t| t.cost}
  end

  


end

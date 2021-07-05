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
    Membership.all.select {|m| m.gym == self}
  end

  def lifters
    memberships.map {|m| m.lifter}
  end

  def lifter_names 
    lifters.map {|l| l.name}
  end

  def lift_total
    lifters.sum {|total = 0, l| total += l.lift_total}
  end

end

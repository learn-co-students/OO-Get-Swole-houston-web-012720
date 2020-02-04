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
    Membership.all.select{|x| x.gym == self}
  end

  def lifters
    memberships.map{|x| x.lifter}
  end

  def total_lift
    lifters.reduce(0){|sum, x| sum + x.lift_total}
  end

end

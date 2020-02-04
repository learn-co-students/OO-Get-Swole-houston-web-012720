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
    Membership.all.select{|membership| membership.gym == self}
  end

  def all_lifters
    memberships.map{|membership| membership.lifter}
  end

  def all_lifter_names
    all_lifters.map{|lifter| lifter.name}
  end

  def total_lifter_lift
    all_lifters.map{|lifter| lifter.lift_total}.sum
  end
  
end

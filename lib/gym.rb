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

  def lifters
    memberships.map{|membership| membership.lifter}.uniq
  end

  def lifter_names
    lifters.map{|lifter| lifter.name}
  end

  def gym_mem_lift_total
    lifters.map{|lifter| lifter.lift_total}.reduce(0, :+)
  end

end

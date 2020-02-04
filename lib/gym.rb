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
    memberships.map {|membership| membership.lifter}.uniq
  end

  def list_of_lifters
    lifters.map{|lifter| lifter.name}.uniq
  end

  def combined_lift_total
    lifters.reduce(0){|sum, lifter| sum+=lifter.lift_total}
  end





end

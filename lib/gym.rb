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

  def self.memberships(gym)
    Membership.all.select { |m| m.gym == gym }
  end

  def self.lifters(gym)
    memberships(gym).map { |m| m.lifter }
  end

  def lifter_names
    Gym.lifters(self).map { |l| l.name }
  end

  def total_lift
    Gym.lifters(self).sum { |l| l.lift_total }
  end  

end

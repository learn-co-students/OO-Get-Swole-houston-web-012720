class Lifter
  attr_reader :name, :lift_total
  @@all = []

  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total
    @@all << self
  end

  def self.all
    @@all
  end

  def memberships
    Membership.all.select {|m| m.lifter == self}
  end

  def gyms
    memberships.map {|l| l.gym}
  end

  def self.average_lift_total
    self.all.sum {|l| l.lift_total} / self.all.length

  end

  def total_membership_cost
    memberships.sum {|t| t.cost}
  end

  def new_gym(gym, cost)
    Membership.new(self, gym, cost)
  end
  


end

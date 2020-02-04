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
    memberships.map {|m| m.gym}
  end

  def self.avg_lift
    total = self.all.sum {|sum = 0, lifter| sum += lifter.lift_total}
    avg = total / self.all.length


  end

  def membership_cost
    memberships.sum {|total = 0, m| total += m.cost}
  end

  def sign_up (gym, cost)
    Membership.new(self, gym, cost)
  end

end




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
    Membership.all.select{|membership| membership.lifter == self}
  end

  def gyms 
    # Membership.all.select{|membership| membership.gym == self}
    memberships.map{|membership| membership.gym}
  end
  def self.avg_lift_total
    total = 0
    @@all.each{|lifter| total += lifter.lift_total} 
    avg = total/@@all.count
  end
  def total_cost_of_a_lifter_gym_membership
    memberships.reduce(0){|sum,membership| sum += membership.cost}
  end

  def new_gym_membership(gym,cost)
    Membership.new(gym,self,cost)
  end

end


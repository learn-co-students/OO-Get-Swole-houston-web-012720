class Lifter
  attr_reader :name, :lift_total, :memberships, :gyms

  @@all = []

  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total
    @@all << self
  end

  def self.all
    @@all
  end

  def self.memberships(lifter)
    Membership.all.select { |m| m.lifter == lifter }
  end  

  def self.gyms(lifter)
    memberships(lifter).map { |m| m.gym }
  end

  def self.average_lift
    @@all.inject(0) { |sum, l| sum + l.lift_total } / @@all.size
  end  

  def self.total_cost(lifter)
    memberships(lifter).sum { |m| m.cost }
  end

  def self.sign_up(lifter, gym, cost) 
    Membership.new(cost, lifter, gym)   
  end

end

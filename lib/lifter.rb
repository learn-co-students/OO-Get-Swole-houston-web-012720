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
    Membership.all.select {|membership| membership.lifter == self}
  end

  def gyms
    memberships.map {|member| member.gym.name}
  end

  def self.average_lift
    @@all.reduce(0) {|sum, l| sum + l.lift_total} / @@all.size
  end

  def total_cost
    memberships.reduce(0) {|sum, m| sum + m.cost}
  end

  def new_membership(cost, gym)
    Membership.new(cost, self, gym)
  end


end

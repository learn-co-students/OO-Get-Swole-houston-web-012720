class Lifter
  attr_reader :name, :lift_total

  @@all =[]

  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total

    @@all << self
  end

  def self.all
    @@all
  end

  def memberships
    Membership.all.select{|x| x.lifter == self}
  end

  def gyms
    memberships.map{|x| x.gym.name}
  end

  def self.average_lift
    (@@all.reduce(0){|sum, x| sum + x.lift_total}) / @@all.count
  end

  def total_cost(name)
    memberships.reduce(0){|sum, x| sum + x.cost}
  end

  def add_member(cost, gym)
    Membership.new(cost, gym, self)
  end

end

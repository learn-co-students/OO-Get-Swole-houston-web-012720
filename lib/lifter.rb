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
    memberships.map{|membership| membership.gym}.uniq
  end

  def self.avg_lift_total
    all.map{|lifter| lifter.lift_total}.reduce(0, :+)/all.count.to_f
  end

  def total_membership_fees
    memberships.map{|membership| membership.cost}.reduce(0, :+)
  end

  def sign_new_membership(gym, cost)
    Membership.new(self, gym, cost)
  end

end

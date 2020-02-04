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
    Membership.all.select {|member| member.gym == self}
  end

  def gym_members
    memberships.map {|member| member.lifter}
  end

  def gym_member_names
    memberships.map {|member| member.lifter.name}
  end

  def members_lift_total
    memberships.reduce(0) {|sum, m| sum + m.lifter.lift_total}
  end


end

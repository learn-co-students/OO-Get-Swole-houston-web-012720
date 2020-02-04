class Gym
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
    puts "#{name} is now open!"
  end

  def memberships
    Membership.all.select { |membership|
      membership.gym == self
    }
  end

  def lifters
    memberships.map { |membership|
      membership.lifter
    }.uniq
  end

  def lifters_names
    lifters.map { |lifter|
      lifter.name
    }
  end

  def total_lift
    lifters.sum { |sum  = 0, lifter|
      sum += lifter.lift_total
    }
  end

  def self.all
    @@all
  end

  

end


# - Get a list of all gyms

# - Get a list of all memberships at a specific gym

# - Get a list of all the lifters that have a membership to a specific gym

# - Get a list of the names of all lifters that have a membership to that gym

# - Get the combined lift total of every lifter has a membership to that gym
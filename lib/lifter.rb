class Lifter
  attr_reader :name, :lift_total

  @@all = []

  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total
    @@all << self
    puts "#{name} is in the game, he could lift #{lift_total}"
  end

  def memberships
    Membership.all.select{ |membership|
       membership.lifter == self
    }
  end

  def gyms
    memberships.map { |membership|
      membership.gym
    }
  end

  def total_cost
    memberships.sum { |sum = 0, membership|
      sum += membership.cost
    }
  end

  def buy_membership(gym, cost)
    Membership.new(gym, self, cost)
  end

  def self.average_lift_total
      @@all.sum { |sum = 0, lifter|
        sum += lifter.lift_total
      }
  end

  def self.all
    @@all
  end



end


# - Get a list of all lifters

# - Get a list of all the memberships that a specific lifter has

# - Get a list of all the gyms that a specific lifter has memberships to

# - Get the average lift total of all lifters

# - Get the total cost of a specific lifter's gym memberships

# - Given a gym and a membership cost, sign a specific lifter up for a new gym

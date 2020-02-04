class Lifter
  attr_reader :name, :lift_total
  @@all = [ ]
  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total
    @@all << self
  end
  def self.all
    @@all
  end 
  # def self.count
  #   @@all.count
  # end 
  def memberships
    # a list of all the memberships that a specific lifter has
    Membership.all.select do |membership|
      membership.lifter == self
    end 
  end
  def list_of_gyms
    #  a list of all the gyms that a specific lifter has memberships to 
    memberships.map do |membership|
      membership.gym
    end
  end
  
  def self.avarage
    # Get the average lift total of all lifters
     total = 0
    self.all.map do |lifter|
      total += lifter.lift_total
     end 
     total / @@all.count
  end
  def total_cost
    # Get the total cost of a specific lifter's gym memberships
    total = 0
    memberships.map do |memb|
      total += memb.cost
    end
    total
  end

  def sign_lifter_new_gym(gym , cost)
    # Given a gym and a membership cost, sign a specific lifter up for a new gym
    Membership.new(cost, self , gym) 
  end 

end



# Lifter

# Get a list of all lifters

# Get a list of all the memberships that a specific lifter has

# Get a list of all the gyms that a specific lifter has memberships to

# Get the average lift total of all lifters

# Get the total cost of a specific lifter's gym memberships

# Given a gym and a membership cost, sign a specific lifter up for a new gym

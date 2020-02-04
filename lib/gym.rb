class Gym
  attr_reader :name
  @@all = [ ]
  def initialize(name)
    @name = name
    @@all << self
  end
  def self.all
    @@all
  end 
  def memberships
    #1Get a list of all memberships at a specific gym
    Membership.all.select do |membership|
      membership.gym == self
    end 
  end
  def lifters
    #2Get a list of all the lifters that have a membership to a specific gym
    memberships.map do  |membership|
      membership.lifter
    end
  end
   
  def names_lifter 
    #3 a list of the names of all lifters that have a membership to that gym
    lifters.map do |lifter|
        lifter.name
      end
  end
    def total_lift
      #4 the combined lift total of every lifter has a membership to that gym
      total = 0 
      lifters.map do |lifter|
        total += lifter.lift_total
      end  
  end 
end


# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

# test code goes here

g1 = Gym.new("SilverBack Gym")
g2 = Gym.new("Gold's Gym")
g3 = Gym.new("Lifetime Fitness")
g4 = Gym.new("LA Fitness")


l1 = Lifter.new("Antonio", 300)
l2 = Lifter.new("Keith", 225)
l3 = Lifter.new("Mitchell", 185)
l4 = Lifter.new("Dom", 95)

m1 = Membership.new(30, l1, g1)
m2 = Membership.new(45, l1, g4)
m3 = Membership.new(30, l2, g1)
m4 = Membership.new(20, l2, g4)
m5 = Membership.new(20, l3, g2)
m6 = Membership.new(85, l4, g3)


binding.pry

puts "Gains!"

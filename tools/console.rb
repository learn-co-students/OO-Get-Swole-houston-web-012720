# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

g1 = Gym.new("Gym 1")
g2 = Gym.new("Gym 2")
g3 = Gym.new("Gym 3")

l1 = Lifter.new("Raul", 225)
l2 = Lifter.new("Steven", 175)
l3 = Lifter.new("Vidhi", 125)

m1 = Membership.new(75, g1, l1)
m2 = Membership.new(100, g2, l2)
m3 = Membership.new(150, g3, l3)
m4 = Membership.new(150, g3, l1)
m5 = Membership.new(75, g1, l2)
m6 = Membership.new(100, g2, l3)












binding.pry

puts "Gains!"

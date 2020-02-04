# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

# test code goes here
l1 = Lifter.new("Jay", 350)
l2 = Lifter.new("Smith", 150)
l3 = Lifter.new("Jackson", 180)

g1 = Gym.new("24 fitness")
g2 = Gym.new("L.A fitness")
g3 = Gym.new("Lifetime fitness")

m1 = Membership.new(45, l1, g1)
m2 = Membership.new(44, l2, g2)
m3 = Membership.new(75, l2, g3)

m4 = Membership.new(45, l3, g3)
m5 = Membership.new(44, l2, g1)
m6 = Membership.new(75, l3, g3)
binding.pry

puts "Gains!"

# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

# test code goes here

l1 = Lifter.new("Charlie", 405)
l2 = Lifter.new("Brock", 315)
l3 = Lifter.new("Arnold", 1450)
l4 = Lifter.new("Thai", 20)

g1 = Gym.new("Gold's")
g2 = Gym.new("24 Hour Fitness")
g3 = Gym.new("LA Fitness")

m1 = Membership.new(30, l1, g2)
m2 = Membership.new(30, l2, g2)
m3 = Membership.new(35, l3, g1)
m4 = Membership.new(30, l3, g2)
m5 = Membership.new(45, l3, g3)
m6 = Membership.new(45, l4, g3)

binding.pry

puts "Gains!"

# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

l1 = Lifter.new("Bill Bob", 100)
l2 = Lifter.new("Mary Anne", 200)
l3 = Lifter.new("Bella Ella", 300)

g1 = Gym.new("W Gym") #2 lifters
g2 = Gym.new("M Gym") #1 lifter
g3 = Gym.new("MW Gym") #3 lifters

m1 = Membership.new(l1, g2, 100)
m2 = Membership.new(l1, g3, 200)
m3 = Membership.new(l2, g1, 150)
m4 = Membership.new(l2, g3, 150)
m5 = Membership.new(l3, g1, 150)
m6 = Membership.new(l3, g3, 200)





binding.pry

puts "Gains!"

# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

l1 = Lifter.new("Elliot", 995)
l2 = Lifter.new("Matt", 1100)
l3 = Lifter.new("Jacob", 900)
l4 = Lifter.new("Stephen", 800)

g1 = Gym.new("Equinox")
g2 = Gym.new("24 Hour Fitness")
g3 = Gym.new("LA Fitness")

m1 = Membership.new(l1, g1, 250)
m2 = Membership.new(l1, g2, 95)
m3 = Membership.new(l2, g2, 60)
m4 = Membership.new(l3, g3, 105)
m5 = Membership.new(l2, g1, 400)
m6 = Membership.new(l3, g1, 100)
m7 = Membership.new(l4, g1, 250)
m8 = Membership.new(l4, g1, 100)

binding.pry

puts "Gains!"

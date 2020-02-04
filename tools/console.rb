# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

golds = Gym.new("Gold's Gym")
pf = Gym.new("Planet Fitness")

l1 = Lifter.new("Joe", 250)
l2 = Lifter.new("Sam", 325)

m1 = Membership.new(40, l1, golds)
m2 = Membership.new(38, l1, pf)

m3 = Membership.new(38, l2, pf)

binding.pry

puts "Gains!"

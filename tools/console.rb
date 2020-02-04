# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

l1 = Lifter.new("Anam", 5)
l2 = Lifter.new("Vihdi", 10)
l3 = Lifter.new("Gian", 15)
l4 = Lifter.new("Sam", 20)

g1 = Gym.new('LaFit')
g2 = Gym.new('IronFit')

m1 = Membership.new(l2, g1, 50)
m2 = Membership.new(l3, g2, 40)
m3 = Membership.new(l1, g1, 50)
m4 = Membership.new(l4, g2, 40)


binding.pry

puts "Gains!"

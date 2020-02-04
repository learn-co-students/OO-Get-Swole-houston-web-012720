# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

# test code goes here
l1 = Lifter.new("l1",200)
l2 = Lifter.new("l2",300)
l3 = Lifter.new("l3",400)
l4 = Lifter.new("l4",1200)
l5 = Lifter.new("l5",90)
l6 = Lifter.new("l6",100)


g1 = Gym.new("g1")
g2 = Gym.new("g2")
g3 = Gym.new("g3")
g4 = Gym.new("g4")

m1 = Membership.new(g1,20,l1)
m2 = Membership.new(g2,30,l2)
m3 = Membership.new(g3,12,l3)
m4 = Membership.new(g4,32,l4)
m5 = Membership.new(g1,18,l5)
m6 = Membership.new(g2,45,l6)
m7 = Membership.new(g3,20,l1)
m8 = Membership.new(g4,45,l2)
m9 = Membership.new(g1,100,l3)
m10 = Membership.new(g2,50,l4)
m11 = Membership.new(g3,30,l5)
m12 = Membership.new(g4,19,l6)
m13 = Membership.new(g1,31,l1)
m14 = Membership.new(g2,21,l2)

binding.pry

puts "Gains!"



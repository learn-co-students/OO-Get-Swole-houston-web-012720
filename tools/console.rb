# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

# test code goes here

gym1 = Gym.new("fitniesss_first")
gym2 = Gym.new("Time_fitness")
gym3 = Gym.new("Heregym")
gym4 = Gym.new("NewGym")
gym5 = Gym.new("Gymhome")

lifter1 = Lifter.new("fitniesss_first", 5 )
lifter2 = Lifter.new("Time_fitness", 10 )
lifter3 = Lifter.new("Heregym", 15 )
lifter4 = Lifter.new("NewGym", 20 )
lifter5 = Lifter.new("Gymhome", 40)

membership1 = Membership.new(10 , lifter1 , gym1)
membership2 = Membership.new(20 , lifter2 , gym2)
membership3 = Membership.new(30 , lifter2 , gym2)
membership4 = Membership.new(40 , lifter1 , gym2)
membership5 = Membership.new(50 , lifter5 , gym4)

binding.pry

puts "Gains!"

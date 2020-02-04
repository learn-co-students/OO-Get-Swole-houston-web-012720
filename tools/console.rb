# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

# test code goes here

FIRST = "Lilli Dwight Curtis Kiersten Vicenta Lashawnda Marge Valentin Candelaria Abraham".split(" ")
LAST ="Figeroa Lybarger Bull Parrino Murawski Littlewood Griffiths Ruel Dallas Naumann".split(" ")
ADJ = "uneven truculent stale fretful superb workable statuesque simplistic furry apathetic".split(" ")
NOUN ="Banquette Civilization Job Mile Mouser Nickel Ore Sanction Snarl Socialist".split(" ")

def rand_name
    "#{FIRST.sample} #{LAST.sample}"
end

def rand_inst
    "#{ADJ.sample.capitalize} #{NOUN.sample}"
end

10.times do
    Gym.new(rand_inst)
end

50.times do
    Lifter.new(rand_name, rand(0.2..100.0))
end

while Membership.all.length < 150
    lifter = Lifter.all.sample
    gym = Gym.all.sample
    if !lifter.gyms.include?(gym)
        lifter.buy_membership(gym, rand(20..100))
    end
end

Gym.all.each{ |gym|
    puts "#{gym.name} has #{gym.lifters.length} lifters. They all lift in total #{gym.total_lift.round(2)}"
    puts Gym.all.sample.lifters_names
}

puts "Average lift is: #{Lifter.average_lift_total.round(2)}"

Lifter.all.each{ |lifter|
    puts "#{lifter.name} could lift #{lifter.lift_total} and his membershifts cost in total #{lifter.total_cost}"
}



# binding.pry

puts "Gains!"

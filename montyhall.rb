#Monty Hall Simulator


puts "How many times would you like to simulate the problem?"
run = gets.chomp.to_i

stay_correct = 0
switch_correct = 0
run.times do
  doors = ["goat","goat","goat"]
  car_door = Random.rand(3)
  doors[car_door] = 'car'
  choice = Random.rand(3)
  show_door = 0
  switch_door = 0
  (0..2).each{|door| show_door = door if doors[door] == 'goat' && door != choice }
  (0..2).each {|door| switch_door = door if door != choice && door != show_door }
  stay_correct += 1 if doors[choice] == 'car'
  switch_correct += 1 if doors[switch_door] == 'car'
end

stay_percent = (stay_correct.to_f / run) * 100
switch_percent = (switch_correct.to_f / run) * 100

puts "Stay win chance   : #{sprintf( "%0.02f", stay_percent)}%"
puts "Switch win chance : #{sprintf( "%0.02f", switch_percent)}%"

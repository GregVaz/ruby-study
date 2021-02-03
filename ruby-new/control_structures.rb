# Control Structures
# Ruby uses the keyword *end* to signify the end of a body of all the control structures
#

today = Time.now

# if statement
if today.saturday?
  puts "Do chores around the house"
elsif today.sunday?
  puts "Relax"
else 
  puts "Go to work"
end

num_pallets = 0
weight = 0

# while statement
while weight < 100 and num_pallets <= 5
  pallet = 10
  weight += pallet
  num_pallets += 1
end

# if statement modifier
radiation = 4000
puts "Danger, Will Robinson" if radiation > 3000

square = 4

while square < 1000
  square = square*square
end

square = 4
square = square*square while square < 1000

number1 = 0
number2 = 1 # different object id

puts number1.eql? number2 # Also compares object ids
puts number1 <=> number2 # show difference from left number compared to right number

puts "Insert Number 1: "
number1 = gets
number1 = number1.to_i

puts "Insert Number 2: "
number2 = gets
number2 = number2.to_i

print "Sum: "
puts number1 + number2

print "Subtraction: "
puts number1 - number2

print "Multiplication: "
puts number1*number2 

print "Division: "
puts number1/number2

print "Power: "
puts number1**number2

print "Rest: "
puts number1%number2
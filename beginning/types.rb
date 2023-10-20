my_string = String.new('This is a string class')

puts my_string

range = (2..4).to_a # to array

print range
print "\n"

teachers = Array.new(3)
teachers2 = Array.[]('Edson', 'Isa', 'Thalyta')

teachers[0] = 'Thiago'
teachers[1] = 'Marquinho'
teachers[2] = 'Mariana'

print teachers.concat(teachers2)
print "\n"

people = Hash["Thiago" => 10, "Mariana" => 20, "Edisa" => 30, "Makita" => 40]
print people
print "\n"

print "{people['Thiago']}: #{people['Thiago']}"
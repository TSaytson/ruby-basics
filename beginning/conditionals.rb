age = 0
name = ''

car_is_on = false

unless car_is_on
  puts "Car: "
end

puts 'What weekday number is today?'
week_day = gets.to_i

case week_day
when week_day = 1
  puts 'Monday'
when week_day = 2
  puts 'Tuesday'
when week_day = 3
  puts 'Wednesday'
when week_day = 4
  puts 'Thursday'
when week_day = 5
  puts 'Friday'
when week_day = 6
  puts 'Saturday'
when week_day = 7
  puts 'Sunday'
else
  puts 'Invalid option'
end

puts 'What is your name?'
name = gets

puts 'How old are you?'
age = gets.to_i

if age>20
  puts 'Too old'
elsif age > 15
  puts 'Too young'
else
  puts 'Are you a baby?'
end

result = age > 20 ? 'Too old' : age > 15 ? "Too young" : "Are you a baby?"

puts result

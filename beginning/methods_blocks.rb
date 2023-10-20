# methods
def factorial(num)
  if num == 0
    return 1
  else
    return num * factorial(num-1)
  end
end

number = 0
print "Type your number: "
number = gets.to_i

print "factorial of " + number.to_s + ": " + factorial(number).to_s

# blocks

def block_1
  yield
  puts "This is inside the block"
  yield
end

block_1 { puts "This is outside the block"}
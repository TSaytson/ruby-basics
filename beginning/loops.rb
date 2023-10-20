init = 0
max = 10

# while init < max do
#   print 'init: ' + init.to_s + "\n"
# init += 1
# end

# begin
#   print 'init: ' + $init.to_s + "\n"
#   $init += 1
# end while $init < $max

# for init in 0..10
#   max *=2
# end
# print max
# print "\n"

arr = ['Item 1', 'Item 2', 'Item 3']

# for item in (0..arr.length-1)
#   print arr[item]
#   print "\n"
# end

# arr.each do |a|
#   print a
#   print "\n"
# end

item = 0
until item >= arr.length do
  print arr[item]
  print "\n"
  item += 1
end

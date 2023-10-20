require 'io/console'

$arr = Array.[]
$fname = "names.txt"
file = File.open($fname, 'a+')
file.readlines.map(&:chomp).each do |line|
  $arr.push(line)
end
file.close()

STDOUT.clear_screen
print "Welcome to SayRuby Names Management System \n"


begin
  puts '1 - Add name'
  puts '2 - List names'
  puts '3 - Delete name'
  puts '4 - Exit'

  option = gets.chomp.to_i

  def add
    print "Type a name: "
    name = gets.chomp
    if (name.length < 2)
      raise TypeError 'Name is too short'
    end
    $arr.push(name)
    rescue
      print "Name must have more than 2 characters\n"
  end

  def list
    print "Names \n"
    $arr.each do |name|
      print name
      print "\n"
    end
  end

  def delete
    print 'What name do you want to delete? '
    name = gets.chomp
    index = $arr.index(name)
    if !index
      raise TypeError, 'Name not found'
    end
    $arr.delete_at(index)
    print name + " deleted \n"
    rescue  Exception => e
      print name + " does not exists \n"
      print e.message
  end

  case option
  when 1
    add()
  when 2
    list()
  when 3
    delete()
  when 4
    file = File.open($fname, 'w')
    $arr.each do |name|
      file.write name + "\n"
    end
    print "Bye bye \n"

  else
      print "Please type one of the options below \n"
  end

end until option == 4

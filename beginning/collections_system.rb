$arr = Array.[]

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
    rescue
      print name + " does not exists \n"
  end

  case option
  when 1
    add()
  when 2
    list()
  when 3
    delete()
  else
    if option != 4
      print "Please type one of the options below \n"
    end
  end

end until option == 4

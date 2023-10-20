class Person
  attr_reader :name, :age
  attr_writer :name, :age
  def initialize(color, width)
    print "color: " + color + "\nwidth: " + width.to_s + "\n"
  end
  def say(name)
    print "I am talking to " + name + "\n"
  end
  def walk
    print "I'm walking...\n"
    my_private_method
  end
  private
    def my_private_method
      print "Private: Accessible only inside class\n"
    end
  protected
    def my_protected_method
      print "Protected: accessible inside class and through inheritance\n"
    end
end
puts Person.instance_variables
puts Person.class_variables

person = Person.new('Green', 150)
person.say('Thiago')
person.walk
person.name = 'Thiago'
print person.name

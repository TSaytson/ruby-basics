class Animal
  attr_reader :name, :weight, :paws
  attr_writer :name, :weight, :paws

  def initialize(name, weight, paws)
    @name, @weight, @paws = name, weight, paws
  end
end

class Dog < Animal
  def walk
    print "Walking in " + @paws.to_s + " paws"
  end
end

dog = Dog.new('Dog', 4, 4)

dog.walk
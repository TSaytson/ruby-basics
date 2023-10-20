class Phalcon
  attr_reader :name, :weight, :paws
  attr_writer :name, :weight, :paws

  def initialize(name, weight, paws)
    @name, @weight, @paws = name, weight, paws
  end

  def walk
    print "I'm a Phalcon walking with " + @paws.to_s + " paws \n"
  end
end
class Eagle
  attr_reader :name, :weight, :paws
  attr_writer :name, :weight, :paws

  def initialize(name, weight, paws)
    @name, @weight, @paws = name, weight, paws
  end

  def walk
    print "I'm an Ealge walking with " + @paws.to_s + " paws \n"
  end
end

class Bird
  def walk(bird)
    bird.walk
  end
end

phalcon = Phalcon.new('Ed Pires', 20, 2)
eagle = Eagle.new('Jose', 15, 2)
bird = Bird.new
bird.walk(phalcon)
bird.walk(eagle)
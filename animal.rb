# frozen_string_literal: true

class Animal
  attr_reader :name, :age

  def name=(value)
    raise "Name can't be blank" if value == ''

    @name = value
  end

  def age=(value)
    raise "An age of #{value} is isn't valid!" if value.negative?

    @age = value
  end

  def report_age
    puts "#{@name} is #{@age} years old"
  end

  def talk
    puts "#{@name} says Bark!"
  end

  def move(destination)
    puts "#{@name} runs to the #{destination}"
  end
end

class Dog < Animal
  def to_s
    "#{@name} the dog, age #{@age}"
  end
end

class Bird < Animal
  def talk
    puts "#{@name} says Chirp! Chirp!"
  end
end

class Cat < Animal
  def talk
    puts "#{@name} says Meow!"
  end
end

class Armadillo < Animal
  def move(destination)
    puts "#{@name} unrolls!"
    super
  end
end

fido = Dog.new
fido.name = 'Fido'
fido.age = 2
fido.talk
fido.move('house')
fido.report_age

rex = Dog.new
rex.name = 'Rex'
rex.age = 3
rex.talk
rex.move('food bowl')
rex.report_age
puts rex, fido

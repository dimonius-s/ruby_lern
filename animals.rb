# frozen_string_literal: true

def talk(animal_type, name)
  case animal_type
  when 'bird'
    puts "#{name} says Chirp! Chirp!"
  when 'dog'
    puts "#{name} says Bark!"
  when 'cat'
    puts "#{name} says Meow!"
  end
end

def move(animal_type, name, destination)
  case animal_type
  when 'bird'
    puts "#{name} files to the #{destination}."
  when 'dog'
    puts "#{name} runs to the #{destination}."
  when 'cat'
    puts "#{name} runs to the #{destination}."
  end
end

def report_age(name, age)
  puts "#{name} is #{age} years old."
end

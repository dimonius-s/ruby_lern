# frozen_string_literal: true

def my_method(&my_block)
  puts "We're in the method, about to invoke your block!"
  my_block.call
  puts "We're back in the block!"
end

my_method do 
  puts "We're in the block!"
end

my_method {puts "We're in the block!"}

def twice(&my_block)
  puts "In the method, about call block!"
  my_block.call
  puts "Back in the method, about to call the block again!"
  my_block.call
  puts"Back in the method, about to call the block again!"
end

twice do
  puts "Wooo!"
end

twice { puts "Wooo!" }

def give(&my_block)
  my_block.call("2 tutle doves", "1 partridge")
end

give do |present1, present2|
  puts "My method gave to me..."
  puts present1 ,present2
end


def twice
  yield
  yield
end

def give
  yield "2 turtle doves", "1 partridge"
end

def run_block
  yield
end

run_block do
  puts "do/end"
end

run_block { puts "braces" }

def take_this
  yield "present"
end

take_this do |thing|
  puts "do/end block got #{thing}"
end

take_this { |thing| puts "braces block got #{thing}" }

def call_block(&block)
  puts 1
  block.call
  puts 3
end

def call_twice
  puts 1
  yield
  yield
  puts 3
end

def pass_parameters_to_block
  puts 1
  yield 9, 3
  puts 3
end

call_block do
  puts 2
end

call_block { puts "two" }
call_twice { puts 2 }
call_twice do
  puts "two"
end

pass_parameters_to_block do |param1, param2|
  puts param1 + param2
end

pass_parameters_to_block do |param1, param2|
  puts param1 / param2
end



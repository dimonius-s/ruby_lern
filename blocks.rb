# frozen_string_literal: true

def my_method(&my_block)
  puts "We're in the method, about to invoke your block!"
  my_block.call
  puts "We're back in the method!"
end

my_method do
  puts "We're in the block!"
end

my_method do
  puts "It's a block party!"
end

my_method do
  puts 'Wooooo!'
end

# def twice(&my_block)
# puts "In the method, about to call the blcok!"
# my_block.call
# puts "Back in the method, about to call the block again!"
# # my_block.call
# puts "Back in the method, about to return!"
# end
#

def twice
  yield
  yield
end

twice do
  puts 'Woooooo!'
end

# def give(&my_block)
#   my_block.call("2 turned doves", "1 partidge")
# end
#

def give
  yield '2 turned doves', '1 partidge'
end

give do |param_1, param_2|
  puts 'My method gave to me ....'
  puts param_1, param_2
end

def run_block
  yield
end

run_block do
  puts 'do/end'
end

run_block { puts 'braces' }

def take_this
  yield 'present'
end

take_this { |thing| puts "braces block got #{thing}" }

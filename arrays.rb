# frozen_string_literal: true

prices = [2.99, 25.00, 9.99]
puts prices[0]
puts prices[1]
puts prices[2]
prices[0] = 0.99
prices[1] = 1.99
prices[2] = 2.99
p prices
prices[3] = 3.99
prices[6] = 6.99
p prices
p prices.class
p prices.first
p prices.last
puts prices.length
puts prices.include?(25.00)
puts prices.find_index(9.99)
index = 0
while index < prices.length
  puts prices[index]
  index += 1
end

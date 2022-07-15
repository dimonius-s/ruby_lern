# frozen_string_literal: true

def total(prices)
  amount = 0
  prices.each do |price|
    amount += price
  end
  amount
end

prices = [3.99, 25.00, 8.99]

puts format('%.2f', total(prices))

def refund(prices)
  amount = 0
  prices.each do |price|
    amount -= price
  end
  amount
end

puts format('%.2f', refund(prices))

def show_discounts(prices)
  prices.each do |price|
    amount_off = price / 3.0
    puts format('Your discount: $%.2f', amount_off)
  end
end

show_discounts(prices)

puts format('%.2f', total(prices))
puts format('%.2f', refund(prices))
show_discounts(prices)

def do_something_with_every_item(array, operation)
  amount = 0 if %w[total refund].include?(operation)
  index = 0
  while index < array.length
    case operation
    when 'total'
      amount += array[index]
    when 'refund'
      operation -= array[index]
    when 'show discounts'
      ammount_off = array[index] / 3.0
      puts format('Your discount: $%.2f', ammount_off)
    end
    index += 1
  end
  amount if (operation == 'total') || (operation == 'refund')
end

# frozen_string_literal: true

def accelerate
  puts 'Stepping on the gas'
  puts 'Stepping up'
end

def sound_horn
  puts 'Pressing on the horn button'
  puts 'Beep beep!'
end

def use_headlights(brightness = 'low-beam')
  puts "Turning on the #{brightness} headlights"
  puts 'Watch out for deer!'
end

def order_soda(flavor, size = 'medium', quantity = 1)
  plural = if quantity == 1
             'soda'
           else
             'sodas'
           end
  puts "#{quantity} #{size} #{flavor} #{plural}, comming right up!"
end

def mileage(miles_drive, gas_used)
  return 0.0 if gas_used.zero?

  miles_drive / gas_used
end

accelerate
sound_horn
use_headlights
use_headlights('high-beam')
order_soda('orange')
order_soda('lemon-lime', 'small', 2)
order_soda('grape', 'large')
trip_mileage = mileage(400, 12)
puts "You got #{trip_mileage} MPG on this trip."
lifetime_mileage = mileage(11_432, 366)
puts "This car averages #{lifetime_mileage} MPG."

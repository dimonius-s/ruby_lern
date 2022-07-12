# frozen_string_literal: true

class Employee
  attr_reader :name, :salary

  def name=(name)
    raise "Name can't be blank!" if name == ''

    @name = name
  end

  def salary=(salary)
    raise "A salary of #{salary} isn't valid!" if salary.negative?

    @salary = salary
  end

  def initialize(name = 'Anonymous', salary = 0.0)
    self.name = name
    self.salary = salary
  end

  def print_pay_stub
    puts "Name: #{@name}"
    pay_for_period = (@salary / 365.0) * 14
    formatted_pay = format('%.2f', pay_for_period)
    puts "Pay This Period: $#{formatted_pay}"
  end
end

Employee.new('Jane Doe', 50_000).print_pay_stub
Employee.new('Jane Doe').print_pay_stub
Employee.new.print_pay_stub

puts format('%12s | %s', 'Product', 'Cost in Cents')
puts '-' * 30
puts format('%12s | %2i', 'Stamps', 50)
puts format('%12s | %2i', 'Paper Clips', 5)
puts format('%12s | %2i', 'Tape', 99)
puts format('%i', 3 / 4.0)

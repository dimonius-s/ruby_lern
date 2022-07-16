# frozen_string_literal: true

class Employee
  attr_reader :name, :salary

  def name=(name)
    raise 'Name can\'t be blank!' if name == ''

    @name = name
  end

  def salary=(salary)
    raise "A salary of #{salary} isn\'t valid!" if salary.negative?

    @salary = salary
  end

  def initialize(name = 'Anonymous', salary = 0.0)
    self.name = name
    self.salary = salary
  end

  def print_pay_stub
    puts "Name: #{@name}"
    pay_for_period = (@salary / 365.0) * 14
    formated_pay = format('%.2f', pay_for_period)
    puts "Pay This Period: $#{formated_pay}"
  end
end

class SalariedEmployee < Employee
  attr_reader :salary

  def salary=(salary)
    # Код для проверки и присваивания @salary
  end
end

class HourlyEmployee
  # Код для проверки и присваивания
end

amy = Employee.new
amy.name = 'Amy Blake'
amy.salary = 50_000
amy.print_pay_stub

# kara = Employee.new
# kara.name = ''

# ben = Employee.new
# ben.salary = -246

Employee.new('Jane Doe', 50_000).print_pay_stub
Employee.new('Jane Doe').print_pay_stub
Employee.new.print_pay_stub
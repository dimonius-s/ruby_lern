# frozen_string_literal: true

class Employee
  attr_reader :name, :salary

  def name=(name)
    raise "Name can't be blank!" if name == ''

    @name = name
  end

  def print_name
    puts "Name: #{name}"
  end

  def salary=(salary)
    raise "A salary of #{salary} isn't valid!" if salary.negative?

    @salary = salary
  end

  def initialize(name = 'Anonymous', salary = 0.0)
    self.name = name
    self.salary = salary
  end
end

class SalariedEmployee < Employee
  attr_reader :salary

  def salary=(salary)
    raise "A salary of #{salary} isn't valid!" if salary.negative?

    @salary = salary
  end

  def initialize(name = 'Anonymous', salary = 0.0)
    self.name = name
    self.salary = salary
  end

  def print_pay_stub
    print_name
    pay_for_period = (@salary / 365.0) * 14
    formatted_pay = format('$%.2f', pay_for_period)
    puts "Pay This Period: #{formatted_pay}"
  end
end

class HourlyEmployee < Employee
  def self.security_guard(name)
    HourlyEmployee.new(name, 19.25, 30)
  end

  def self.cashier(name)
    HourlyEmployee.new(name, 12.75, 25)
  end

  def self.janitor(name)
    HourlyEmployee.new(name, 10.50, 20)
  end

  attr_reader :hourly_wage, :hours_per_week

  def hourly_wage=(hourly_wage)
    raise "A hourly wage of #{hourly_wage} isn't valid!" if hourly_wage.negative?

    @hourly_wage = hourly_wage
  end

  def hours_per_week=(hours_per_week)
    raise "A hours per week of #{hours_per_week} of isn't valid!" if hours_per_week.negative?

    @hours_per_week = hours_per_week
  end

  def initialize(name = 'Anonymous', hourly_wage = 0.0, hours_per_week = 0.0)
    super(name)
    self.hourly_wage = hourly_wage
    self.hours_per_week = hours_per_week
  end

  def print_pay_stub
    print_name
    pay_for_period = hourly_wage * hours_per_week * 2
    formatted_pay = format('$%.2f', pay_for_period)
    puts "Pay This Period: #{formatted_pay}"
  end
end

salaried_employee = SalariedEmployee.new('John Smith', 50_000)
salaried_employee.print_pay_stub
hourly_employee = HourlyEmployee.new('John Smith', 14.97, 30)
hourly_employee.print_pay_stub

angela = HourlyEmployee.security_guard('Angela Matthews')
ivan = HourlyEmployee.cashier('Ivan Stokes')
angela.print_pay_stub
ivan.print_pay_stub

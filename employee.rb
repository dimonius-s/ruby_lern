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
    self.print_name
    pay_for_period = (@salary / 365.0) * 14
    formatted_pay = format("$%.2f", pay_for_period)
    puts "Pay This Period: #{formatted_pay}"
  end
end

class HourlyEmployee < Employee
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
    self.print_name
    pay_for_period = hourly_wage * hours_per_week * 2
    formatted_pay = format("$%.2f", pay_for_period)
    puts "Pay This Period: #{formatted_pay}"
  end

end


salaried_employee = SalariedEmployee.new('John Smith', 50000)
salaried_employee.print_pay_stub
hourly_employee = HourlyEmployee.new('John Smith', 14.97, 30)
hourly_employee.print_pay_stub

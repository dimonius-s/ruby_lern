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

class SalariiedEmployee < Employee
  attr_reader :salary

  def salary=(salary)
    super(salary)
  end

  def initialize(name = 'Anonymous', salary = 0.0)
    super(name)
    self.salary = salary
  end

  def print_pay_stub
    pay_for_period = (salary / 365.0) * 14
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

  def initialize(name = 'Anonymous', salary = 0.0)
    super(name)
    self.salary = salary
  end

  def print_pay_stub
    super(name, salary)
    pay_for_period = hourly_wage * hours_per_week * 2
    pay_for_period = format("$%.2f", pay_for_period)
    puts "Pay This Period: #{pay_for_period}"
  end

end


Employee.new('Jane Doe', 50_000).print_pay_stub
Employee.new('Jane Doe').print_pay_stub
Employee.new.print_pay_stub



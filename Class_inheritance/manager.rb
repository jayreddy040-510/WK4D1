require_relative  "employee.rb"
class Manager < Employee
    attr_reader :employees
    def initialize(name,salary,title,boss)
        super
        @employees = []
    end

    def bonus(multiplier)
        sum = 0
        employees.each do |employee|
            sum += employee.salary
        end

        sum * multiplier
    end

    def add_employee(name, salary, title, boss)
        x = Employee.new(name, salary, title, boss)
        employees << x
    end

end
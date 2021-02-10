class Employee 
  def initialize(name, title, salary, boss)
    @name = name
    @title = title
    @salary = salary
    @boss = nil 
  end

  def boss=(node)
    prevboss = self.boss
    @boss = node
    if node != nil 
      node.employees << self
    end
  end






  def bonus(multiplier)
    if title != manager
      bonus = salary * multiplier
    else
      bonus = self.salary_search * multiplier
    end
  end

  def salary_search(worker)
    salaries = 0
    if self.title == employee
      salaries += self.salary
    end
      self.employees.each do |employee|
        salary_search(employee)
      end
      salaries
  end




end

class Manager < Employee

  attr_reader :employees
  
  def initialize(name, title, salary, boss)
    super(name, title, salary, boss)
    @employees = []
  end

  def add_employee(employee)
    employee.boss= self
  end



end


# p john = Employee.new('John', 'employee', 15, 'Jeff')

# p penelope = Employee.new('Penelope', 'employee', 15, 'Jeff')

p michael_scott = Manager.new('Michael', 'manager', 400, nil)

p dwight = Manager.new('Dwight', 'manager', 10, michael_scott)

p michael_scott.add_employee(dwight)
p michael_scott.employees
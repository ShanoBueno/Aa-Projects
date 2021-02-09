class Employee 
  def initialize(name, title, salary, boss)
    @name = name
    @title = title
    @salary = salary
    @boss = boss
    
  
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
      self.each do |employee|
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

  def employees=(argument)
    @employees << argument
  end


end


# p john = Employee.new('John', 'burger flipper', 15, 'Jeff')

# p penelope = Employee.new('Penelope', 'burger flipper', 15, 'Jeff')

 p michael_scott = Manager.new('Michael', 'branch_manager', 400, 'David Wallace')

p dwight = Manager.new('Dwight', 'Assistant to the Assistant Branch Manager', 10, michael_scott)

p michael_scott.employees= dwight
p michael_scott.employees
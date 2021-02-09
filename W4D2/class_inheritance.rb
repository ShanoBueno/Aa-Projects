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
    end
  end

  def salary_search
    salaries = []
    queue = [self]
    until queue.empty?
      employee = queue.shift
  
  
  end




end

class Manager < Employee
  def initialize
    @employees = []
  end



end


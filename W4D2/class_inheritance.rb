class Employee 
  def initialize(name, title, salary, boss)
    @name = name
    @title = title
    @salary = salary
    @boss = nil 
  end

  def boss=(node)
    @boss = node
    if node != nil 
      node.add_employees(self)
    end
  end

  def bonus(multiplier)
    if @title != 'Manager'
      bonus = @salary * multiplier
    else
      bonus = self.salary_search * multiplier
    end
  end
end

class Manager < Employee

  attr_reader :employees, :salary, :title, :name, :boss
  
  def initialize(name, title, salary, boss)
    super
    @employees = []
  end

  def add_employee(employee)
    self.employees << employee
  end

  # def bfs(node)
  #   queue = []
  #   queue.push(node)
  #   while(queue.size != 0)
  #     n = queue.shift
  #     puts n.value
  #     n.children.each do |child|
  #       queue.push(child)
  #     end
  #   end
  # end
  # bfs(root)

  def salary_search
    funding = 0

    queue = []
    queue.push(self)
    while (queue.size != 0)
      n = queue.shift
      puts n
      puts n.salary
      puts n.title
      if n.title != "Employee"
        n.employees.each do |employee|
          funding += employee.salary
        queue.push(employee)
        else
          funding += n.salary
      end
    end
    funding
    end
  end
  # def salary_search(worker)
  #   salaries = 0
  #   if @title == 'Employee'
  #     salaries += self.salary
  #   end
  #     self.employees.each do |employee|
  #       salary_search(employee)
  #     end
  #     salaries
  # end


end

ned = Manager.new('Ned', 'Manager', 1000000, nil)
darren = Manager.new('Darren', 'Manager', 78000, ned)
shawna = Employee.new('Shawna', 'Employee', 12000, darren)
david = Employee.new('David', 'Employee', 10000, darren)


puts shawna.bonus(2)

puts ned.bonus(5)
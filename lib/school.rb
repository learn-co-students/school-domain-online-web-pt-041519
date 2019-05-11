
class School
  def initialize(name)
    @name = name
  end
  def roster
    hash = {}
  end
  def add_student(name, grade)
    roster[grade, [name]]
  end
  
  
end
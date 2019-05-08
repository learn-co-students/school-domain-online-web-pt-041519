class School
  
  attr_accessor :name, :roster
  
  def initialize(name)
    @name = name
    @roster = {}
  end
  
  def add_student(child, grade)
    if roster[grade]
      roster[grade] << child
    else
      roster[grade] = []
      roster[grade] << child
    end
  end
  
  def grade(grade)
    roster[grade]
  end
  
  def sort
    ans = {}
    roster.each do |grade, child|
      ans[grade] = child.sort
    end
    ans
  end
  
end
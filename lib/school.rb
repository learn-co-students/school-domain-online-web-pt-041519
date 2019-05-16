# code here!
class School
  
  attr_accessor :name, :roster
  
  def initialize(name)
    @roster = {}
    @name = name
  end
  
  def add_student(name,grade)
   @roster[grade] ? @roster[grade] << name : @roster[grade] = [name]
  end
  
  def grade(grade)
    @roster[grade]
  end
  
  def sort
    @roster.each {|grade, name| @roster[grade] = name.sort}
end
end  
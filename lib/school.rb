# code here!
class School
  attr_reader :roster
  def initialize(name)
    @name = name
    @roster = {}
  end

  def roster
    @roster
    
  end
  def add_student(student_name,grade)
    if @roster[grade] != nil 
      @roster[grade] << student_name
    else 
      @roster[grade] = [student_name]
    end
  end
  def grade(num)
   @roster[num]
   
  end
  def sort 
    @roster.each do |grade, student_name|
      student_name.sort!
    end
  end
  
end
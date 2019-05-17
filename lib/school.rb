require 'pry'

class School
  
  attr_reader :roster
  
  def initialize(school)
    @school = school 
    @roster = {}
  end
  
  def add_student(name, grade)
    @name = name 
    @grade = grade
    if @roster.key?(grade)
      @roster[@grade] << @name 
    else 
      @roster[@grade] = []
      @roster[@grade] << @name
    end
  end 
  
  def grade(grade)
    @grade = grade
    @roster[@grade]
  end 
  
  def sort
    @roster.each do |grade, name|
		name.sort!
	end
  end 
  
  
  
end
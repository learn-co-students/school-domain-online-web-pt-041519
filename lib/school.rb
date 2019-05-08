require 'pry'

class School
  
  
  def initialize(name)
    @name = name
    @roster = {} 
  end
  
  def roster 
    @roster
  end
    
  
  def add_student(student, att)
   # binding.pry
    roster[att] = [] if !roster.keys.include?(att)
    roster[att] << student
  end
  
  def grade(n)
    roster[n]
  end 
  def sort 
    sorted = {}
    roster.each {|k, v| sorted[k] = v.sort} 
    sorted
  end
    
  
end 
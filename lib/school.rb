# code here!
require "pry"
class School 
  attr_accessor :name, :roster
  
  def initialize(name)
    @name = name 
    @roster = {}
  end 
    
    
  def add_student(student, grade)
    roster[grade] ||= []
    roster[grade] << student 
  end 
  
  def grade(num)
    roster[num]
  end 
    
  def sort 
    roster.each do |grade, array|
      array.sort!    
    end 
  end 
  
end 
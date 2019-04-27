require 'pry'
class School
  
attr_accessor :name, :roster

  def initialize(name)
    @name = name
    @roster = {}
  end
  
  def add_student(name, grade)
    @roster[grade] ||= []
    @roster[grade] << name
  end
  
  def grade(grade)
    @roster[grade]
  end
  
  def sort
    @roster.collect do |grade, name_array|
      @roster[grade] = name_array.sort
    end
    return roster
  end
end
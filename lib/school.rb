require "pry"
# code here!
class School

  def initialize(name)
    @name = name
    @roster = {}
  end

  def roster
    @roster
  end

  def add_student(student, grade)
    roster[grade] ||= [] #if !roster.include?(grade)
    roster[grade] << student
  end

  def grade(grade)
    roster[grade]
  end

  def sort
    sorted = {}
    roster.each {|grade, student| sorted[grade] = student.sort}
    sorted
  end

end
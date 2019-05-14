require 'pry'

class School
  # each instance has a roster constant variable - initially an empty hash
  # roster hash: { grade_levels => [students] }
  # add_student(student_name, grade): adds to roster
  # grade(grade_num): returns all students in grade_num
  # sort: return roster hash with students A > Z

  def initialize(name)
    @name = name
    @ROSTER = {}
  end

  def roster
    @ROSTER
  end

  def add_student(student_name, grade)
    @ROSTER[grade] ? @ROSTER[grade] << student_name : @ROSTER[grade] = [student_name]
  end

  def grade(grade)
    @ROSTER[grade]
  end

  def sort
    @ROSTER.each { |grade, students| @ROSTER[grade] = students.sort }
  end
end

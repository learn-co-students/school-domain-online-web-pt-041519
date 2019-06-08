require 'pry'

class School
  # each instance has a roster constant variable - initially an empty hash
  # roster hash: { grade_levels => [students] }
  # add_student(student_name, grade): adds to roster
  # grade(grade_num): returns all students in grade_num
  # sort: return roster hash with students A > Z

  attr_reader :name, :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student (student_name, grade)
    @roster[grade] ? @roster[grade] << student_name : @roster[grade] = [student_name]
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.each { |grade, students| @roster[grade] = students.sort }
  end
end

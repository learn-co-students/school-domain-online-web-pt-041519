# Define School Class
class School
  attr_accessor :name, :roster

  # Initialize school with name and empty roster
  def initialize(name)
    @name = name
    @roster = {}
  end

  # Add students to roster by grade
  def add_student(name, grade)
    @roster[grade] ||= []
    @roster[grade] << name
  end

  # Retrieve all students from input grade
  def grade(grade)
    @roster[grade]
  end

  # Sort students alphabetically by grade
  def sort()
    @roster.each { |grade, names| @roster[grade] = names.sort}
  end
end	

# Test
# school = School.new("Bayside High School")
# school.add_student("AC Slater", 9)
# school.add_student("Miles Davis", 10)
# school.add_student("Kelly Kapowski", 10)
# school.add_student("Screech", 11)
# puts school.roster
# puts school.sort
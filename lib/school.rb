


class School
  attr_reader :name, :roster
  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(name, grade)
    roster[grade] ||= []
    roster[grade] << name
  end
  def grade(n)
    roster[n]
  end
  def sort
    roster.map do |grade, array|
      roster[grade] = array.sort.flatten
    end
    roster
  end
end

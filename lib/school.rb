class School

  attr_accessor :name, :roster
  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(name, grade)
    roster[grade] ||=[]
    roster[grade]<<name
  end

  def grade(year)
    roster[year]
  end

  def sort
    ret_hash = {}
    roster.each do |grade, students|
      ret_hash[grade]=students.sort
    end
    ret_hash
  end

end

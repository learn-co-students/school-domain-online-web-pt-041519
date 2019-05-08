# code here!
class School
  def initialize(name)
    @name = name
    @roster = {}
  end
  
  def roster
    @roster
  end
  
  def add_student(student, att)
    roster[att] = [] if !roster.keys.include?(att)
    roster[att] << student
  end
  
  def grade(letter)
    roster[letter]
  end
  
  def sort
    sorted = {}
    roster.each {|k, v| sorted[k] = v.sort}
    sorted
    end
end

   
    
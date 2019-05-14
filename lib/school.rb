# code here!
class School
  attr_reader :name, :roster, :add_student

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
   @roster.each {|grade, name| name.sort! }
 end


end
# def add_student(name, grade)
#   @roster[grade].nil? ? @roster[grade]asf = [name] : @roster[grade] << name
# end


# def add_student(name, grade)
#   if @roster[grade].nil?
#      @roster[grade] = [name]
#   else
#     @roster[grade] << name
#   end
# end


#if roster[grade].nil?
#roster[grade] = name
#initialize key & insert name as value
#else
#roster[grade] << name
#end

#and if there is already a key & it matches grade,
#insert name into grade as a value


# @roster[grade] = []
# @roster[grade] << name
# @roster.map do |grade, student|
#   if grade =|| grade
#     student << name
#   else
#     st
#end

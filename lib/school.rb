class School
attr_accessor :name , :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(name, grade)
    if @roster.include?(grade) == false # does the roster have a this grade if not
      @roster[grade] = []
    end
    @roster[grade] << name
  end

   def grade(grade)
     @roster[grade]
   end

   def sort
   sorted = {}
   roster.each do |grade, students|
     sorted[grade] = students.sort
   end
    sorted
   end
end

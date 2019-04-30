class School
  
    
  
  def initialize(name)
    @name = name
    @roster = {}
  end 

  def roster
     @roster
  end

  def add_student(name, grade)
    if @roster.include?(grade)
      @roster[grade] << name 
    else 
      @roster[grade] = []
      @roster[grade] << name 
     
  end 
end 

  def grade(num)
    @roster[num]
  end 
  
  def sort  
    @roster.each do |grade, name|
      @roster[grade] = name.sort
    end 
     
  end 

end 
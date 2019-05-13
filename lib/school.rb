class School
  attr_reader :name, :roster
  
  def initialize(name)
    @name = name
    @roster = { }
    # or
    # @roster = Hash.new {|h,k| h[k] = [ ]} and would only need "roster[grade] << name in method below"
  end

  def add_student(name, grade)
    roster[grade] ||= [ ]
    roster[grade] << name
    # or
    #if roster[grade]
      #roster[grade] << name
    #else
      #roster[grade] = [name]
    #end
  end
  
  def grade(grade)
    @roster[grade]
  end
  
  def sort 
     roster.each do |k,v|
       v.sort!
     end
  end
  
end
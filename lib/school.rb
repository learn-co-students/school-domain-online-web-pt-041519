class School
  
  attr_accessor :name , :roster
  
  def initialize(name)
    @name = name
    @roster = {}
  end
  
  def add_student(student, level)
    roster[level] ||=Array.new
    roster[level] << student
  end
    
    def grade(level)
      roster.detect do |x, y| 
        while x == level 
          return y
        end
      end
    end
      
      def sort
    sorted_hash = {}
    roster.each { |key, value| sorted_hash[key] = value.sort }
    return sorted_hash
  end
        
        
   end 
   
  
    
    
      
  
  
  











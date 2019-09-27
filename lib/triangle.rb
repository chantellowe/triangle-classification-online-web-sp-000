class Triangle
  # write code here
  
 def initialize(side_a, side_b, side_c)
    @side_a = side_a
    @side_b = side_b
    @side_c = side_c
  end
  
  def kind 
    
    #@side_a > 0 
    #@side_b > 0 
    #@side_c > 0 
    
    if @side_a <= 0 || @side_b <= 0 || @side_c <= 0 
      begin
        raise TriangleError
      #rescue TriangleError => error 
        #puts error.message
      end
    elsif @side_a == @side_b && @side_b == @side_c
      :equilateral
    elsif @side_a == @side_b || @side_b == @side_c || @side_a == @side_c
      :isosceles
    else
      :scalene
    end
    
  end
  
  class TriangleError < StandardError
  end
  
end

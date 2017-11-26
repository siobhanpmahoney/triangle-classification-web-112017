class Triangle
  attr_accessor :side_1, :side_2, :side_3, :kind

  def initialize(side_1, side_2, side_3)
    @side_1 = side_1
    @side_2 = side_2
    @side_3 = side_3
  end

  def kind
    if @side_1 > 0 && @side_2 > 0 && @side_3 > 0 && @side_1 + @side_2 > @side_3 && @side_1 + @side_3 > @side_2 && @side_2 + @side_3 > @side_1
      if @side_1 == @side_2 && @side_2 == @side_3
        :equilateral
      elsif @side_1 == @side_2 && @side_1 != @side_3 || @side_1 == @side_3 && @side_1 != @side_2 || @side_2 == @side_3 && @side_2 != @side_1
        :isosceles
      else
        :scalene
      end
    else
      raise TriangleError.new
    end
  end
end


  class TriangleError < StandardError
    def message
      "triangle error. please review lengths of triangle sides before moving on."
    end
  end

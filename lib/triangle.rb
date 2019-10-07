require 'pry'

class Triangle
  # write code here

    attr_accessor :first_side, :second_side, :third_side

    def initialize(first_side, second_side, third_side)
      @first_side = first_side
      @second_side = second_side
      @third_side = third_side
    end

    def kind
      no_size
      is_real
      if first_side == second_side && second_side == third_side
        :equilateral
      elsif first_side == second_side || second_side == third_side || first_side == third_side
        :isosceles
      else
        :scalene
      end
    end
  
  def no_size
    [first_side, second_side, third_side].each do |side|
      if side <=0
        raise TriangleError
      end
    end
  end 

  def is_real
    if (first_side + second_side <= third_side) || (second_side + third_side <= first_side) || (third_side + first_side <= second_side)
      raise TriangleError
    end
  end

  class TriangleError < StandardError
    def message
      "That's not a triangle!"
    end
  end
end

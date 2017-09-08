# frozen_string_literal: true

# Rectangle class
class Rectangle
  attr_reader :number_of_sides, :length, :width

  def initialize(length, width)
    @number_of_sides = 4
    @length = length
    @width = width
  end
end

# Square class
class Square < Rectangle
  def initialize(side)
    super
    @length = side
    @width = side
  end
end

# Suppose we just want a four-sided object. Any will do.
def four_sided?(obj)
  obj.number_of_sides == 4
end

four_sided?(Rectangle.new(2, 3))
four_sided?(Square.new(5))

# Does this code adhere to LSP when the client wants a four-sided object?
# What if the client wants a four-sided object with equal sides?

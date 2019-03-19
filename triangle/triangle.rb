class Triangle
  def initialize(sides)
    @sides = sides.sort
  end

  def equilateral?
    self.valid? & (@sides.uniq.length == 1)
  end

  def isosceles?
    self.valid? & (@sides.uniq.length <= 2)
  end

  def scalene?
    self.valid? & (@sides.uniq.length == 3)
  end

  def valid?
    (@sides.all? { |side| side > 0 }) & (@sides[0] + @sides[1] >= @sides[2])
  end
end
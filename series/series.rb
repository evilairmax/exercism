class Series
  def initialize(digits)
    @digits = digits.chars
  end

  def slices num_slices
    raise ArgumentError if num_slices > @digits.length
    @digits.each_cons(num_slices).map(&:join)
  end
end
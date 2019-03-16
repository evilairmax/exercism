class Squares
  def initialize(num)
    @num = num
  end
  def square_of_sum
    sum = 0
    numbers = (0..@num)
    numbers.each { |n| sum += n }
    sum ** 2
  end

  def sum_of_squares
    sum = 0
    for i in 1..@num
      sum += @num ** 2
    end
    sum
  end

  def difference
    square_of_sum(@num) - sum_of_squares(@num)
  end
end
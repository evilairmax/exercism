class Array
  def accumulate
    a = []
    each { |n| a << yield(n) }
    a
  end
end
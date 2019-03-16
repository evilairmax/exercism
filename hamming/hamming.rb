class Hamming
  def self.compute(a, b)

    raise ArgumentError.new() if !a.eql? b

    differences = 0

    for i in 0..a.length
      if a[i] != b[i]
        differences = differences + 1
      end
    end

    differences
  end
end
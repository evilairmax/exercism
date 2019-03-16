class Grains
  def self.square(sq = 0)
    raise ArgumentError if (sq <= 0 || sq > 64)

    total(sq)
  end

  def self.total(m = 64)
    total = 1
    for i in (1..m)
      total = total + 2**i
    end
    total / 2
  end
end
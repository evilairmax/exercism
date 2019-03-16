class Prime
  def self.nth(n)
    raise ArgumentError if n <= 0
    upper = n * (Math.log(n)+2)
    primes = [nil, nil] + [*2..upper]
    (2..Math.sqrt(upper)).each do |i|
      (i*i).step(upper, i) { |j| primes[j] = nil } if primes[i]
    end
    primes.compact[n-1]
  end
end
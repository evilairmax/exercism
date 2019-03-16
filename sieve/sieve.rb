class Sieve
  def initialize(n)
    @nr = n
  end

  def primes
    #Return empty array if number < 2
    return [] if @nr < 2

    (2..@nr).to_a do |n, p|
      p << n if n.select { |c| n % c == 0 }.count == 0
      p
    end
  end
end
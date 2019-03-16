class Luhn
  def self.valid?(input)

    false if (input.length <= 1 || input.to_i == 0)

    input = input.gsub(/\D/, "").reverse.chars.map(&:to_i)

    sum = 0

    input.each_slice(2) do |o, e|
      sum +=o
      next unless e
      e *= 2
      e = e.divmod(10).inject(:+) if e > 9
      sum += e
    end

    sum % 10 == 0
  end
end
class Scrabble
  attr_reader :input, :score
  def initialize(input)
    @input = input
    @score = calc_score(@input)
  end

  def calc_score(input)
    @score = 0

    return @score if (input.strip.empty? || input.nil?)

    input.split("").each do |letter|

      if %w(A, E, I, O, U, L, N, R, S, T).include? letter
        @score += 1
      end

      if %w(D, G).include? letter
        @score += 2
      end

      if %w(B, C, M, P).include? letter
        @score += 3
      end

      if %w(F, H, V, W, Y).include? letter
        @score += 4
      end

      if "K" == letter
        @score += 5
      end

      if %w(J, X).include? letter
        @score += 8
      end

      if %w(Q, Z).include? letter
        @score += 10
      end

    end

    return @score
  end
end
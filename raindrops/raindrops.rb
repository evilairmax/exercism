class Raindrops
  def self.convert(num)
    output = ""
    [3, 5, 7].each do |p|
      if num % p == 0
        case p
        when 3
          output += "Pling"
        when 5
          output += "Plang"
        when 7
          output += "Plong"
        end
      end
    end

    if output.empty?
      num.to_s
    else
      output
    end
  end
end
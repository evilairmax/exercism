class Pangram
  def self.pangram? input

    return false if input.empty?

    s = input.chars.downcase

    ('a'..'z').each { |l| s.include?(l) }
  end
end
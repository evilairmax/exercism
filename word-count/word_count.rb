class Phrase
  attr_reader :word_count, :words

  def initialize s
    @words = s.gsub(/[^0-9a-z\' \n]/i, '').downcase
  end

  def word_count
    matched = {}
    @words.split(" ").each { |w| matched.include?(w) ? matched[w] += 1 : matched[w] = 1 }
    matched
  end
end
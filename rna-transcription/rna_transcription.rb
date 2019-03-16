class Complement
  def self.of_dna strand
    transcribed = ""
    strand.split("").each do |s|
      case s
      when "G"
        transcribed += "C"
      when "C"
        transcribed += "G"
      when "T"
        transcribed += "A"
      when "A"
        transcribed += "U"
      end
    end
    transcribed
  end
end
class Bob
	def self.hey input
    input = input.gsub(" ", "")
		if input[input.length - 1] == "?"
			return "Sure."
		elsif input == input.upcase
			return "Whoa, chill out!"
		elsif input.strip.empty?
			return "Fine. Be that way!"
		elsif (input == input.upcase && input[input.length - 1] == "?")
			return "Calm down, I know what I'm doing!"
		end
		return "Whatever."
	end

end
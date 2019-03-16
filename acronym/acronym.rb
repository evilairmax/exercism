class Acronym
	def self.abbreviate name
		name.scan(/\b[a-zA-Z]/).join.upcase
	end
end
class Isogram
	def self.isogram? str

		true if str.empty?

		matches = {}

		str.each do |s|
			if matches[s].nil?
				matches[s] = 1
			else
				matches[s] = matches[s] + 1
			end
		end

		if matches.index(2) == nil
			true
		else
			false
		end

	end
end
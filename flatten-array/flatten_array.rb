class FlattenArray
	def self.compare elem, build
		if elem.is_a?(Array)
			build = flatten(elem, build)
		else
			build << elem
		end
	end
	def self.flatten(a, s = [])
		a.each {|n| compare(n, s) }
		s
	end
end
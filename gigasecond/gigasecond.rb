require 'date'
require 'time'
class Gigasecond
	SECONDS_LEFT = 1_000_000_000
	def self.from p
		p.to_time + SECONDS_LEFT
	end
end
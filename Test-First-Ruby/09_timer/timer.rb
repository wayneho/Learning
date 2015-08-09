class Timer
	attr_accessor :seconds

	def initialize
		@seconds = 0
	end

	def time_string
		hour = format('%02d', @seconds/3600)
		min = format('%02d', (@seconds%3600)/60)
		sec = format('%02d', ((@seconds%3600)%60))
		return "#{hour}:#{min}:#{sec}"
	end
end
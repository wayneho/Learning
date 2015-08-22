class Book
	attr_reader :title

	def title=(new_title)
		words = new_title.split(' ')
		little_words = ['a','the','an','in','and','of']
		words[0].capitalize!
		words[1..-1].each do |w|
			if !(little_words.include?(w))
				w.capitalize!
			end
		end
		@title = words.join(' ')
	end
end



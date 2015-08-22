class Dictionary
	attr_reader :entries
	
	def initialize
		@entries = {}
	end

	def add(hash)
		if hash.is_a?(String)
			@entries[hash] = nil
		else
			@entries.merge!(hash)
		end
	end

	def keywords
		@entries.keys
	end

	def include?(word)
		@entries.has_key?(word)
	end


end
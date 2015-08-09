
def echo saying
	saying
end

def shout saying
	saying.upcase
end

def repeat(saying,num=2)
	((saying + " ")*num).rstrip
end

def start_of_word(word, num)
	word[0..num-1]
end

def first_word(words)
	words.split(' ')[0]
end

def titleize(title)
	little_words = ['and','the', 'a', 'or', 'over']
	title = title.split(' ')

	title.each do |i|
		if (little_words).include?(i) 
			i.downcase!
		else
			i.capitalize!
		end
	end
	title[0].capitalize!

	return title.join(" ")

end

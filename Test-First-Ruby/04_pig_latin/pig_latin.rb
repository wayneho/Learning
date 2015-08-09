def translate(str)
	vowels = ['a','e','i','o','u','y']
	if vowels.include?(str[0])
		return str+"ay"
	else
		if vowels.include?(str[1])
			return str[1..-1] + str[0] + "ay"
		else
			return str[2..-1] + str[0..1] + "ay"
		end
	end
end
# Your Task Implement a method #substrings that takes a word as the first argument and then an array of 
# substrings (your dictionary) as the second argument. It should return a hash listing each substring 
# (case insensitive) that was found in the original string and how many times it was found.
#
#  > substrings("Howdy partner, sit down! How's it going?", dictionary)
#    => {"down"=>1, "how"=>2, "howdy"=>1,"go"=>1, "going"=>1, "it"=>2, "i"=> 3, "own"=>1,"part"=>1,"partner"=>1,"sit"=>1}


dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(str, dict)
    h = Hash.new
    str.split(" ").each do |s|
        dict.each do |word|
            if s.downcase.include?(word)
                h.has_key?(word) ? h[word] += 1 : h[word] = 1
            end
        end
    end
    return h
end

puts substrings("below", dictionary)

puts substrings("Howdy partner, sit down! How's it going?", dictionary)
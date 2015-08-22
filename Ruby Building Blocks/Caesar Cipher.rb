def caesarCipher(str, n)
    uppercase = ('A'..'Z').to_a
    lowercase = ('a'..'z').to_a
    str = str.bytes
    str.each_with_index do |c, i|
        if(uppercase.include? c.chr)
            str[i] = (c+n-65)%26+65
        end
        if(lowercase.include? c.chr)
            str[i] = (c+n-97)%26+97
        end
        str[i] = str[i].chr
    end
    puts str.join("")
end

caesarCipher("What a string!", 265)
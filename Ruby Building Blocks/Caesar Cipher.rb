# Implement a caesar cipher that takes in a string and the shift factor and then outputs the modified string:
# > caesar_cipher("What a string!", 5)
#    => "Bmfy f xywnsl!"


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
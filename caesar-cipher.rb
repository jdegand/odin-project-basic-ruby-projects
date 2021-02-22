
=begin
def caesar_cipher(plaintext, key)
    ciphertext = ''

    for i in plaintext
        if(plaintext[i].match(/[a-z]/))
            ciphertext += (plaintext[i].chr - 97 + key) % 26 + 97
        else
            ciphertext += (plaintext[i].chr - 65 + key) % 26 + 65
        end
    end
    return ciphertext
end

caesar_cipher("What a string!", 5)


def caesar_cipher(plaintext, key)
    ciphertext = ''

    plaintext.each_char { |i|
        if(plaintext[i].match(/[a-z]/))
            ciphertext += (plaintext[i].chr - 97 + key) % 26 + 97
        else
            ciphertext += (plaintext[i].chr - 65 + key) % 26 + 65
        end
    }
    return ciphertext
end

caesar_cipher("What a string!", 5)

def caesar_cipher(plaintext, key)
    ciphertext = ''

    plaintext.length.times { |i|
        if(plaintext[i].match(/[a-z]/))
            ciphertext += (plaintext[i].chr - 97 + key) % 26 + 97
        else
            ciphertext += (plaintext[i].chr - 65 + key) % 26 + 65
        end
    }
    return ciphertext
end

caesar_cipher("whatastring", 5)

def caesar_cipher(plaintext, key)
    ciphertext = ''

    plaintext.each_char { |i|
        if(plaintext[i].match(/[a-z]/))
            ciphertext += (plaintext[i].ord - 97 + key) % 26 + 97
        else
            ciphertext += (plaintext[i].ord - 65 + key) % 26 + 65
        end
    }
    return ciphertext
end

caesar_cipher("What a string!", 5)

def caesar_cipher(plaintext, key)
    ciphertext = ''

    plaintext.each_char { |i|
        if(i.match(/[a-z]/))
            ciphertext += (i.ord - 97 + key) % 26 + 97
        else
            ciphertext += (i.ord - 65 + key) % 26 + 65
        end
    }
    return ciphertext
end

caesar_cipher("What a string!", 5)


def caesar_cipher(plaintext, key)
    ciphertext = ''

    plaintext.each_char { |i|

        num = plaintext[i].ord
        chr = num.chr
        puts(chr)
    }
end

caesar_cipher("What a string!", 5)


# working solution -- doesn't include spaces maybe regex could be adjusted to match it
#  have to subtract by a different number

def caesar_cipher(plaintext, key)
    ciphertext = ''

    plaintext.each_char { |i|

        if(i.match(/[a-z]/))
            num = (i.ord - 97 + key) % 26 + 97
            chr = num.chr
            ciphertext += chr;
        else
            num = (i.ord - 65 + key) % 26 + 65
            chr = num.chr
            ciphertext += chr;
        end
    }
     print(ciphertext)
end

caesar_cipher("What a string!", 5)

# exclamation works

def caesar_cipher(plaintext, key)
    ciphertext = ''

    plaintext.each_char { |i|

        if(i.match(/[a-z]/))
            num = (i.ord - 97 + key) % 26 + 97
            chr = num.chr
            ciphertext += chr;
        elsif(i.match(/[\!]/))
            ciphertext += i;
        else
            num = (i.ord - 65 + key) % 26 + 65
            chr = num.chr
            ciphertext += chr;
        end
    }
     print(ciphertext)
end

caesar_cipher("What a string!", 5)
=end

# perfect

def caesar_cipher(plaintext, key)
    ciphertext = ''

    plaintext.each_char { |i|

        if(i.match(/[a-z]/))
            num = (i.ord - 97 + key) % 26 + 97
            chr = num.chr
            ciphertext += chr;
        elsif(i.match(/[\!]/))
            ciphertext += i;
        elsif(i.match(/[\s]/))
            ciphertext += i;
        else
            num = (i.ord - 65 + key) % 26 + 65
            chr = num.chr
            ciphertext += chr;
        end
    }
     print(ciphertext)
end

caesar_cipher("What a string!", 5)

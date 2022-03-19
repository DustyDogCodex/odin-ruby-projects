def caesar_cipher(string, shift)
    str_array = string.split('')
    puts str_array
    cipher_array = str_array.map {|char| 
      if (char.ord == 32) 
        char.ord
      else
        char.ord - shift
      end
    }
    puts cipher_array
    cipher_array = cipher_array.map {|num| num.chr}
    puts cipher_array
    cipher_str = cipher_array.join('')
    puts cipher_str
end
  
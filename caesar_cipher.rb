def caesar_cipher(string, shift)
    str_array = string.split('')
    puts str_array
    cipher_array = str_array.map {|char| 
      case char.ord
      when char.ord.between?(31,64)
        char.ord
      when char.ord - shift < 65
        char.ord = 90 - (65 - (char.ord -shift))
      when char.ord - shift < 97
        char.ord = 122 - (97 - (char.ord -shift))
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
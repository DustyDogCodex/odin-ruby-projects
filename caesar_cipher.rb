def caesar_cipher(string, shift)
  str_array = string.split('')
  
  ord_array = str_array.map {|char| char.ord}
    
  cipher_array = ord_array.map {|value| 
    #selecting an appropriate base for given letters. 65 for capital letters and 97 for lowercase letters.
    base = value < 91 ? 65 : 97
    if value.between?(65,90) || value.between?(97,122)
      #algo for shifting wrapping between (z and a) or (Z and A)
      switch = (((value - base) + shift) % 26) + base   
    else
      #returning space and special characters as they were
      value
    end
  }
  #converting ordinal ASCII values back to characters
  cipher_array = cipher_array.map {|num| num.chr}
  #final cipher formed by adding the characters in cipher_array
  cipher_str = cipher_array.join('')
end
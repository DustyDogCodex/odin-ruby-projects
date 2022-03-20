dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(string, dictionary)
    matches = {}
    dictionary.each do |word|
        if string.downcase.include?(word)
            matches[word] = string.downcase.scan(/#{word}/).length
        end 
    end
    return matches
end

puts substrings("How's it going?", dictionary)
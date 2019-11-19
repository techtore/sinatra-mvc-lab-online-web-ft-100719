class PigLatinizer
  
  def piglatinize(string)
      a = string.split(" ")
      b = a.map {|word| piglatinize_word(word)}
      b.join(" ")
  end

  def piglatinize_word(word)
    parts_of_word = word.split(/([^aeiouAEIOU]*)([aeiouAEIOU]*)(.*)/)
   
    start = parts_of_word[1] # consonant cluster
    rest = parts_of_word[2] + (parts_of_word[3] || "")
    if start.length>0
      "#{rest}#{start}ay"
    else
      "#{rest}way"
    end
  end
end
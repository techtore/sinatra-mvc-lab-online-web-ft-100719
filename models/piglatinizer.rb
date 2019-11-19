class PigLatinizer
  attr_accessor :words
  
  def initialize
    @words = words
  end
  
  def piglatinize(words) 
  
    alpha = ('a'..'z').to_a
    vowels = %w[a e i o u]
    consonants = alpha - vowels
  
    if vowels.include?(str[0])
      words + 'ay'
    elsif consonants.include?(words[0]) && consonants.include?(words[1])
      words[2..-1] + words[0..1] + 'ay'
    elsif consonants.include?(words[0])
      words[1..-1] + words[0] + 'ay'
    else
    words # return unchanged
    end
  end
end
    
  # if starts with consonant take first letter and add to end of word + ay
  # if first 2 letters are consonants take them and add to end of word + ay
  # if first letter == vowel + "way" to end
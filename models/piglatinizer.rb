class PigLatinizer
  attr_accessor :words
  
  def initialize
    @words = words
  end
  
  def piglatinize(string)
    a = string.split(" ")
    b = a.map {|word| piglatinize_word(word)}
    b.join(" ")
  end
end
    
  # if starts with consonant take first letter and add to end of word + ay
  # if first 2 letters are consonants take them and add to end of word + ay
  # if first letter == vowel + "way" to end
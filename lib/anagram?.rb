class String
  define_method(:anagram?) do |string|
    word_array = string.split(' ')
    anagram_array = Array.new
    first_word = self.gsub!(" ", '') || self
    first_word = first_word.split('').sort

    word_array.each do |word|

      second_word = word.gsub!(" ", '') || word
      second_word = second_word.split('').sort

      if first_word == second_word
        anagram_array.push(word)
      end
    end
    anagram_array
  end
end

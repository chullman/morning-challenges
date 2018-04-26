# Dictionary
#
# You've done this one before. This time, complete the challenge
# without using a hash. Arrays only.
#
# Extend the Dictionary class.
#
# It should have three methods:
# .add_word(word, definition) -> Should store a word and definition
# .lookup(word) -> Should return a definition
# .total_words -> Should return the number of words stored
#
# Difficulty:
# 6/10
#
# Example:
# dictionary = Dictionary.new
# dictionary.add_word('ruby', 'A precious stone')
# dictionary.total_words -> should return 1
# dictionary.lookup('ruby') -> should return 'A precious stone'
#
# Check your solution by running the tests:
# ruby tests/26_dictionary_array_test.rb
#

class Dictionary

  attr_reader :words_array

  def initialize
    @words_array = Array.new
  end

  def add_word(word, definition)
    @words_array.push(word)
    @words_array.push(definition)
  end

  def lookup(word)
    @words_array.each_with_index do |word_in_array, index|
      if (word_in_array == word)
        return @words_array[index+1]
      end
    end
    return nil
  end

  def total_words
    return @words_array.length / 2
  end

end

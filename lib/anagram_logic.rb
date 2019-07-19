require 'pry'

class Word_test
  def initialize
  end

  def test_word(word)
    if /[aeiouy]/.match(word)
      true
    else
      false
    end
  end

  def same_word(word1,word2)
    if word1 == word2
      'These are the same two words. Please enter two different words.'
    end
  end

  def anagram(first_word, second_word)
    @first_word = first_word
    @second_word = second_word

    if test_word(@first_word) && test_word(@second_word)
      first_word_arr = @first_word.split('')
      second_word_arr = @second_word.split('')

      first_word_arr + second_word_arr


    end

  end


end

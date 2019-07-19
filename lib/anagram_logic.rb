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

  def anagram(first_word, second_word)
    @first_word = first_word
    @second_word = second_word

    if test_word(@first_word)
      firstword = @first_word.split('')
    end
  end


end

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

    if test_word(@first_word) && test_word(@second_word)
      if @first_word != @second_word
        # first_word_arr = @first_word.split('')
        # second_word_arr = @second_word.split('')
      else
        'These are the same two words. Please enter two different words.'
      end



    end
  end


end

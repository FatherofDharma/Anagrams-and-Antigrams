require 'pry'

class Word_test
  def initialize(first_word)
    @first_word = first_word
  end

  def test_word
    if /[aeiouy]/.match(@first_word)
      true
    end
  end

  def anagram(second_word)
  end


end

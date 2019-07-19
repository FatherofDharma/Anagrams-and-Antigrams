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
      true
    else
      false
    end
  end

  def anagram
    if test_word(@first_word) && test_word(@second_word)
      @first_word_arr = @first_word.split('')
      @second_word_arr = @second_word.split('')
      j = 0

      while (j <= @first_word_arr.length)
        x = 0
        until (x <= @second_word_arr.length)
          if (@first_word_arr[j] != @second_word_arr[x])
            x += 1
          else
            "These words are not anagrams"
            break
          end
        end
        j += 1
      end
      "These words are anagrams"
    end
  end


  def anagram_test(first_word, second_word)
    @first_word = first_word
    @second_word = second_word

    if same_word(@first_word, @second_word)
      "These words are identical"
    else
      anagram
    end
  end

  def first_word_arr
    @first_word_arr
  end

  def second_word_arr
    @second_word_arr
  end

end

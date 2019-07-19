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
      score = 0
      while (j < @first_word_arr.length)
        x = 0
        if score < @first_word_arr.length
          until (x > @second_word_arr.length)
            if @first_word_arr[j] == @second_word_arr[x]
              score += 1
              # break
            end
            # binding.pry
            x += 1
          end
        end
        j += 1
      end
      if score == @first_word_arr.length
      'These words are anagrams'
      elsif score == 0
        'These words are antigrams'
      else
        'These words are neither anagrams or antigrams, sorry!'
      end
    end
  end


  def anagram_test(first_word, second_word)
    @first_word = first_word
    @second_word = second_word

    if same_word(@first_word, @second_word)
      'These words are identical'
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

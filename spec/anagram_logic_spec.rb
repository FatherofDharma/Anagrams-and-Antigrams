require 'rspec'
require 'anagram_logic'
require 'pry'

describe('Word_test') do

  it ('should accurately identify if a word is valid, by identifying if it contains at least one vowel') do
    example = Word_test.new()
  expect(example.test_word('dog')).to(eq(true))
  end

  it ('should accurately identify if a word is invalid, by identifying if it does not contain at least one vowel') do
    example = Word_test.new()
  expect(example.test_word('dgt')).to(eq(false))
  end

  it ('should accurately identify if two words are the same word') do
    example = Word_test.new()
  expect(example.anagram('god', 'god')).to(eq('These are the same two words. Please enter two different words.'))
  end

end

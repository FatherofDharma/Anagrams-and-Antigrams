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

  # it ('should accurately identify if two words contain the same letters') do
  #   test = Word_test.new('dog')
  # expect(test.anagram('god')).to(eq(true))
  # end

end

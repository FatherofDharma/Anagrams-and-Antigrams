require 'rspec'
require 'anagram_logic'
require 'pry'

describe('Word_test') do

  it ('should accurately identify if a word is valid, by identifying if it contains at least one vowel') do
    example = Word_test.new('dog')
  expect(example.test_word()).to(eq(true))
  end

  # it ('should accurately identify if two words contain the same letters') do
  #   test = Word_test.new('dog')
  # expect(test.anagram('god')).to(eq(true))
  # end

end

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
  expect(example.same_word('god', 'god')).to(eq('These are the same two words. Please enter two different words.'))
  end

  it ('should split the first word into an array for comparison') do
    example = Word_test.new()
    test = example.anagram('dog', 'god')
    pass = (['d', 'o', 'g', 'g', 'o', 'd'])
  expect(test).to(eq(pass))
  end

  # it ('should split the first word into an array for comparison') do
  #   example = Word_test.new()
  # expect(example.anagram('dog', 'god')).to(eq(['g', 'o', 'd']))
  # end

  # it ('should accurately identify if two words contain the same letters') do
  #   example = Word_test.new()
  # expect(example.anagram('dog', 'god')).to(eq(true))
  # end

end

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
  expect(example.same_word('god', 'god')).to(eq(true))
  end

  it ('should split the first word into an array for comparison') do
    example = Word_test.new()
    example.anagram_test('dog', 'god')
  expect(example.first_word_arr).to(eq(['d', 'o', 'g']))
  end

  it ('should split the first word into an array for comparison') do
    example = Word_test.new()
    example.anagram_test('dog', 'god')
  expect(example.second_word_arr).to(eq(['g', 'o', 'd']))
  end

  it ('should accurately identify if two words do not contain the same letters') do
    example = Word_test.new()
  expect(example.anagram_test('dog', 'got')).to(eq("These words are not anagrams"))
  end

end

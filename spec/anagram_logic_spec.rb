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
  expect(example.anagram_test('god', 'god')).to(eq('These words are identical'))
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
  expect(example.anagram_test('dog', 'got')).to(eq('These words are neither anagrams or antigrams, sorry!'))
  end

  it ('should accurately identify if two words contain the same letters') do
    example = Word_test.new()
  expect(example.anagram_test('dog', 'god')).to(eq('These words are anagrams'))
  end

  it ('should accurately identify if two words contain the same letters regardless of case') do
    example = Word_test.new()
  expect(example.anagram_test('Dog', 'God')).to(eq('These words are anagrams'))
  end

  it ('should accurately identify if two words contain the same letters regardless of punction') do
    example = Word_test.new()
  expect(example.anagram_test("Dog's", "God!")).to(eq('These words are neither anagrams or antigrams, sorry!'))
  end

  it ('should take a phrase from the user and remove all punctuation') do
    example = Word_test.new()
  expect(example.phrase_test("I like dogs, alot!")).to(eq('I like dogs alot'))
  end

  it ('should take a phrase from the user and remove all punctuation') do
    example = Word_test.new()
  expect(example.anagram_test("I like dogs, alot!", "I like gods, alot!")).to(eq('These words are anagrams'))
  end

end

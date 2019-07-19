require 'rspec'
require 'anagram_logic'
require 'pry'

describe('Word_test') do

  it ('should accurately identify if two words contain the same letters') do
    test = Word_test.new('dog')
  expect(test.anagram('god')).to(eq(true))
  end

end

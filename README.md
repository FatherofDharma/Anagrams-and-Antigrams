# _Anagram Matcher_

#### _Independent Project for Week 8 at the coding school, Epicodus, written on July 19, 2019._

#### By _**Daniel Hongel**_

## Description

_This application is an independent project using Ruby, for coding school Epicodus. It is a program that takes words and phrases from the user and evaluates if any of the words are anagrams or antigrams, and returns the results._

## Setup/Installation Requirements

* _Clone this repository_
* _Open terminal and type 'git clone [git link]'_
* _Navigate to project directory using cd in terminal_
* _Open project in text editor (atom .)_
* _Type 'bundle install' in terminal to load Gems_
* _To run tests, type 'rspec' in terminal_


## Specs
| Behavior | Input | Output |
| ------------- |:-------------:| -----:|
| Should correctly identify if a word is valid by containing a vowel or the letter y| 'dog' |true|
|Should correctly identify if a word is invalid by not containing a vowel or the letter y|'dgt'|false|
|Should accurately identify if two words are the same word|'god', 'god'|'These are the same two words. Please enter two different words.'|
|Should accurately identify if two words contain the same letters|'dog'|'god'|
|Should split the first word into an array for comparison| 'dog' | ['d', 'o', 'g']|
|Should split the second word into an array for comparison| 'god' |['g', 'o', 'd']|
|Should accurately identify if two words do not contain the same letters| 'dog', 'got'|'These words are neither anagrams or antigrams, sorry!'|
|Should accurately identify if two words contain the same letters|'dog', 'god'|'These words are anagrams'|
|Should accurately identify if two words contain the same letters regardless of case|'Dog', 'God'|'These words are anagrams'|
|Should accurately identify if two words contain the same letters regardless of punction|"Dog's", "God!"|"Dog's", "God!"|
|Should take a phrase from the user and remove all punctuation|"I like dogs, alot!"|'I like dogs alot'|
|Should take a phrase from the user and remove all punctuation|"I like dogs, alot!", "I like gods, alot!"|'These words are anagrams'|




## Known Bugs

_No known bugs_

## Support and contact details

_If you encounter any issues when using this software, have questions or concerns, or would like to provide support for this or future projects, please contact me at: fatherofdharma@gmail.com._

## Technologies Used

* Ruby
* RubyGems
* Atom
* GitHub

### License
_This software is licensed under MIT license._

Copyright (c) 2019 **_Daniel Hongel_**

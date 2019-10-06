=begin

The year is 2021, and theres been a new version of scrabble created. 
This version is much more simple. The points are scored according to the letters 
position in the alphabet. a = 1. b = 2, c = 3....etc. With the highest word winning 
that round.

Create a method that will receive a string of one or many words, separated by a space, 
and returns the highest scoring word. 
If two words score the same, return the one that appears first.
You will only receive lowercase alphanumeric characters (a-z).
E.g. word_ranking('hi there'), should return 'there'
As 'hi' is worth 17, whilst 'there' is worth 56, so 'there' is returned
E.g. word_ranking('reshow the shower') -> 'reshow'

=end

def word_ranking(str)
	#Your code here



end

p word_ranking('hi there')
p word_ranking('reshow the shower')
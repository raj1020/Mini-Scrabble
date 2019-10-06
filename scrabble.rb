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
    #define a hash with value assigned to each alphabet
    alnum={ "a"=> 1, 
            "b"=> 2,
            "c"=> 3,
            "d"=> 4,
            "e"=> 5,
            "f"=> 6,
            "g"=> 7,
            "h"=> 8,
            "i"=> 9,
            "j"=> 10,
            "k"=> 11,
            "l"=> 12,
            "m"=> 13,
            "n"=> 14,
            "o"=> 15,
            "p"=> 16,
            "q"=> 17,
            "r"=> 18,
            "s"=> 19,
            "t"=> 20,
            "u"=> 21,
            "v"=> 22,
            "w"=> 23,
            "x"=> 24,
            "y"=> 25,
            "z"=> 26
        }
        total=[]
     str=str.downcase #convert the argument string into lowercase
    strsplit=str.split(" ") # break the string into an array of words

        
    for i in strsplit
        strstrsplit=i.split("") #break each word of the string into an array of individual characters
        tot=0
        for item in strstrsplit
            tot+=alnum[item]
            
        end
        total.push(tot) #to generate an array of numbers from the string argument
    end
    
    index1= total.index(total.max) #to get the index of the biggest number in the array
    
    if str.length==0 # to get correct result if the method argument was an empty string
        return ''
    else
        return strsplit[index1]
    end
       

end

p word_ranking('hi there')
p word_ranking('reshow the shower')
p word_ranking('')

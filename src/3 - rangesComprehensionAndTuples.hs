
-- == Ranges == --
alphabet :: [Char]
alphabet = ['a'..'z'] -- Returns a-z

evenToTwenty :: [Int]
evenToTwenty = [2,4..20] -- Returns 2,4,6,8,10,12,14,16,18,20

-- Can be used to create custom ranges and lists

-- TAKE CARE - Using floats can result in infinite lists as they are not accurate

-- == Infinite lists == --
cycleList::[Char]
cycleList = cycle ['a','b','c'] -- use take 10 when in console to avoid infinite list

repeatList :: [Char]
repeatList = repeat 'a' -- use take 10 when in console to avoid infinite list

-- To create a list of 10 'a's
tenAs :: [Char]
tenAs = replicate 10 'a'

-- == List Comprehension == --

-- Syntax: [output | input, predicate] --

evenUnder20 :: [Int]
evenUnder20 = [x*2 | x <- [1..10]] -- Returns all values of X*2 where X is between 1 and 10


-- You can add multiple predicates
evenUnder20Over12 :: [Int]
evenUnder20Over12 = [x*2 | x <- [1..10], x*2 >= 12] -- Returns all values of X*2 where X is between 1 and 10 and X*2 is greater than or equal to 12


-- Predicates can be functions
remainderThree :: [Int] 
remainderThree = [ x | x <- [50..100], x `mod` 7 == 3]  -- Predicates separated by commas

-- Under 10 = BOOM!, Over 10 = BANG!
boomBangs :: [Int] -> [String]
boomBangs xs = [ if x < 10 then "BOOM!" else "BANG!" | x <- xs, odd x] -- Returns "BOOM!" if x is less than 10, otherwise returns "BANG!" if x is odd

-- You can also pull from multiple lists like in this case
multipleLists :: [Int]
multipleLists = [x*y | x <- [2,5,10], y <- [8,10,11], x*y > 50]


-- List comprehension can also be used to create and manipulate strings

-- == Tuples == --

-- Tuples are like lists but they can contain multiple types
-- Tuples are immutable

tuples :: (Int, Char)
tuples = (1,'a')

-- fst and snd can be used to get the first and second values of a tuple
-- Tuples are 1-indexed
-- zip can be used to create a list of tuples from two lists [a1,b1] [a2,b2] [a3,b3] etc

-- Zip will truncate the list to the shortest list (it is lazy)



-- FIRST FUNCTIONS --

-- Notice the function name
-- name param = body
doubleMe x = x * 2

doubleUs x y = x * 2 + y * 2
doubleSmallNumber x = (if x > 100 then x else x * 2) + 1
-- Can also be written as
-- doubleSmallNumber x = if x > 100 
                            -- then x 
                            -- else x * 2 + 1

-- INTRODUCING LISTS --
-- Lists must contain only one data type
-- Strings are considered lists of characters
-- "Hello" = ['H', 'e', 'l', 'l', 'o']

-- Concatenation is one of the most common operations on lists

concatList :: [a] -> [a] -> [a] -- Type declaration
-- name :: type [a] meaning list of type 'a' -> type -> return type
concatList a b = a ++ b

-- 5:[1,2,3,4] = [5,1,2,3,4] -- Prepending to a list is also common
-- More efficient than appending (does not need to traverse the whole list (LHS of function))
prependList :: a -> [a] -> [a]
prependList a b = a:b

-- List Dimensionality is shown by the number of square brackets (2D, 3D, etc.) [[], []] = 2D etc.

-- List Indexing is done with !! (double exclamation mark)

returnLetter0 :: [a] -> a
returnLetter0 a = a !! 0 -- Not a great use case for this function but it demonstrates the idea

-- List Comparison is done by comparing the first element, then the second, etc.

greaterThanList :: (Ord a) => [a] -> [a] -> Bool
greaterThanList a b = a > b

-- == OTHER LIST FUNCTIONS == --

-- head [1,2,3] = 1 - Returns the first element of a list
-- tail [1,2,3] = [2,3] - Returns everything but the head
-- last [1,2,3] = 3 
-- init [1,2,3] = [1,2] - Returns everything but the last element
-- length [1,2,3] = 3
-- null [1,2,3] = False
-- reverse [1,2,3] = [3,2,1]
-- take 2 [1,2,3] = [1,2] - Extracts that many elements from the beginning of the list
-- drop 2 [1,2,3] = [3] - Drops that many elements from the beginning of the list
-- minimum [1,2,3] = 1
-- maximum [1,2,3] = 3
-- sum [1,2,3] = 6
-- product [1,2,3] = 6
-- elem 2 [1,2,3] = True - Checks if an element is in a list



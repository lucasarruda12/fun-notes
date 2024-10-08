module ExList where

import Prelude
    ( Char , String , Int , Integer , Double , Float , Bool(..)
    , Num(..) , Integral(..) , Enum(..) , Ord(..) , Eq(..)
    , not , (&&) , (||)
    , (.) , ($)
    , flip , curry , uncurry
    , otherwise , error , undefined
    )
import qualified Prelude   as P
import qualified Data.List as L
import qualified Data.Char as C

-- to use a function from a qualified import
-- you need to prefix its name with its alias
-- and a dot:
-- P.head   C.toUpper   etc.
-- I import these for you to test the original functions on ghci:
-- ghci> :t C.toUpper
-- C.toUpper :: Char -> Char
-- You MUST NOT use ANY of these in your code

head :: [a] -> a
head = undefined

tail :: [a] -> [a]
tail = undefined

null :: [a] -> Bool
null [] = True
null _  = False

length :: Integral i => [a] -> i
length []       = 0
length (x : xs) = 1 + length xs

sum :: Num a => [a] -> a
sum []          = 0
sum (x : xs)    = x + sum xs

product :: Num a => [a] -> a
product [] = 1
product (x : xs) = x * product xs

reverse :: [a] -> [a]
reverse = undefined

(++) :: [a] -> [a] -> [a]
(++) = undefined

-- right-associative for performance!
-- (what?!)
infixr 5 ++

-- (snoc is cons written backwards)
snoc :: a -> [a] -> [a]
snoc = undefined

(<:) :: [a] -> a -> [a]
(<:) = flip snoc

-- different implementation of (++)
(+++) :: [a] -> [a] -> [a]
xs +++ []     = xs
xs +++ [y]    = xs <: y
xs +++ (y:ys) = (xs +++ [y]) +++ ys

-- left-associative for performance!
-- (hmm?)
infixl 5 +++

-- minimum :: Ord a => [a] -> a
-- maximum :: Ord a => [a] -> a

-- take
-- drop

-- takeWhile
takeWhile :: (a -> Bool) -> [a] -> [a]
takeWhile f [] = []
takeWhile f (x : xs)
    | f x       = x : takeWhile f xs
    | otherwise = []

-- dropWhile
dropWhile :: (a -> Bool) -> [a] -> [a]
dropWhile f [] = []
dropWhile f (x : xs)
    | f x       = dropWhile f xs
    | otherwise = xs

-- tails
-- init
-- inits

-- subsequences

-- any
-- all

-- and
-- or

-- concat

-- elem using the funciton 'any' above

-- elem': same as elem but elementary definition
-- (without using other functions except (==))

-- (!!)

-- filter
filter :: (a -> Bool) -> [a] -> [a]
filter f []     = []
filter f (x:xs) 
    | f x       = x : filter f xs
    | otherwise = filter f xs
-- map

-- cycle
-- repeat
-- replicate

-- isPrefixOf
-- isInfixOf
-- isSuffixOf

-- zip
-- zipWith

-- intercalate
-- nub

-- splitAt
-- what is the problem with the following?:
-- splitAt n xs  =  (take n xs, drop n xs)

-- break

-- lines
-- words
-- unlines
-- unwords

-- transpose

-- checks if the letters of a phrase form a palindrome (see below for examples)
palindrome :: String -> Bool
palindrome = undefined

{-

Examples of palindromes:

"Madam, I'm Adam"
"Step on no pets."
"Mr. Owl ate my metal worm."
"Was it a car or a cat I saw?"
"Doc, note I dissent.  A fast never prevents a fatness.  I diet on cod."

-}


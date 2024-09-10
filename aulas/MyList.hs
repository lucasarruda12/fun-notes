module MyList where

data List a = Empty | Cons a (List a)

len :: [a] -> Int
len Empty = 0
len Cons (x xs) = 1 + (len xs)

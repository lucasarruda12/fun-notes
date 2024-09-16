module Rat ( rat ) where

data Rat = Rat Integer Integer
    deriving ( Show )

instance Eq Rat where
    Rat x y == Rat n m = x * m == y * n

rat :: Integer -> Integer -> Rat
rat x y
    | y == 0    = error "boom"
    | otherwise = Rat x y

module MyNat where

data Nat = Zero | Succ Nat 
        deriving ( Eq )

plus :: Nat -> Nat -> Nat
plus n Zero     = n
plus n (Succ m) = Succ (plus n m)

instance ( Show Nat ) where
    show Zero = "O"
    show (Succ x) = 'S' : show x


len :: [a] -> Nat
len [] = Zero
len (h:t) = Succ (len t)

rev :: [a] -> [a]
rev [] = []
rev (x : xs) = xs' ++ [x]
    where xs' = rev xs

describe :: [a] -> String
describe xs
    | length xs == 0    = "empty"
    | length xs < 3        = "small"
    | length xs < 6        = "big"
    | otherwise         = "too big"

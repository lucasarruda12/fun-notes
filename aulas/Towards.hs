module Towards where

import Data.Char ( toUpper )

scream :: [Char] -> [Char]
scream = map toUpper

squareAll :: [Int] -> [Int]
squareAll = map (^2)


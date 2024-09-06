module Primeiro where

errado :: [Char]
errado = "not good"

five :: Integer
five = 5

addFive :: Integer -> Integer
addFive x = 5 + x

f :: Integer -> Integer
f x = addFive x + addFive 12

pow :: Integer -> Integer -> Integer
pow x 0 = 1
pow x 1 = x
pow x y = x * pow x (y - 1)

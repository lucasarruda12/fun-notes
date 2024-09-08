module MyBool where

data Boolean = T | F

lnot :: Boolean -> Boolean
lnot T = F
lnot F = T

ifthenelse :: Boolean -> a -> a -> a
ifthenelse T x _ = x
ifthenelse F _ y = y

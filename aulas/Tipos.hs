module Tipos where

-- Typeclasses: Num; Fractional; Integral;
--
-- Primitive types: Char; Int; Integer; Float; Double;
--
-- Types: [Char]; (Int, Int); Int -> Int

data Weekday = Mon
             | Tue
             | Wed
             | Thu
             | Fri
             | Sat
             | Sun
             deriving (Show)

nextDay :: Weekday -> Weekday
nextDay Mon = Tue
nextDay Tue = Wed
nextDay Wed = Thu
nextDay Thu = Fri
nextDay Fri = Sat
nextDay Sat = Sun
nextDay Sun = Mon

nextWorkingDay :: Weekday -> Weekday
nextWorkingDay Mon = Tue
nextWorkingDay Tue = Wed
nextWorkingDay Wed = Thu
nextWorkingDay Thu = Fri
nextWorkingDay _   = Mon

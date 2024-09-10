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
             deriving ( Enum )

instance (Eq Weekday) where
  Mon == Mon = True
  Tue == Tue = True
  Wed == Wed = True
  Thu == Thu = True
  Fri == Fri = True
  Sat == Sat = True
  Sun == Sun = True
  _   == _   = False

instance (Show Weekday) where
  show Mon = "Mon"
  show Tue = "Tue"
  show Wed = "Wed"
  show Thu = "Thu"
  show Fri = "Fri"
  show Sat = "Sat"
  show Sun = "Sun"

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

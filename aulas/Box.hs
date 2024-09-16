module Box where

data Box a = Box a
    deriving ( Show, Eq )

bottom :: a
bottom = bottom

data Boxx a = Boxx a
    deriving (Show, Eq)

coisa :: (Boxx Bool) -> Int
coisa (Boxx True) = 1
coisa (Boxx False) = 2
coisa (Boxx _) = 5
coisa x = 10

tijolo :: Bool
tijolo = tijolo

tijoloa :: Boxx Bool
tijoloa = tijoloa

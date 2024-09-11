module ExMatrix2x2
    ( matrix
    , zero
    , identity
    , rows
    , cols
    , getElem
    , transpose
    , det
    , isDiagonal
    , isTriangular
    , isLowerTriangular
    , isUpperTriangular
    , singular
    , invertible
    , inverse
    ) where

type Number = Double
type Row = [Number]
type Col = [Number]

data Matrix2x2 = Matrix2x2 Number Number Number Number

instance Show Matrix2x2 where
    show (Matrix2x2 a1 a2 b1 b2) = "| " ++  show a1 ++ " " ++ show a2 ++ " |\n| " ++ show b1 ++ " " ++ show b2 ++ " |"

instance Eq Matrix2x2 where
    (Matrix2x2 a1 b1 c1 d1) == (Matrix2x2 a2 b2 c2 d2) = (a1 == a2) && (b1 == b2) && (c1 == c2) && (d1 == d2)

instance Num Matrix2x2 where
    (+) = undefined
    (*) = undefined
    negate = undefined
    abs = undefined
    signum = undefined
    fromInteger = undefined

map :: (Number -> Number) -> Matrix2x2 -> Matrix2x2
map f (Matrix2x2 a b c d) = Matrix2x2 (f a) (f b) (f c) (f d)

land :: Bool -> Bool -> Bool
land True True  = True
land _    _     = False

-- [mudei isso do hw original. Sorry ~Lucas]
-- matrix a b c d should create the matrix
-- ( a b )
-- ( c d )
matrix :: Number -> Number -> Number -> Number -> Matrix2x2
matrix a b c d = Matrix2x2 a b c d

zero :: Matrix2x2
zero = matrix 0 0 0 0

identity :: Matrix2x2
identity = matrix 1 1 1 1

rows :: Matrix2x2 -> [Row]
rows (Matrix2x2 a b c d) = [[a, b], [c, d]]

cols :: Matrix2x2 -> [Col]
cols (Matrix2x2 a b c d) = [[a, c], [b, d]]

getElem :: (Int,Int) -> Matrix2x2 -> Number
getElem = undefined

transpose :: Matrix2x2 -> Matrix2x2
transpose = undefined

det :: Matrix2x2 -> Number
det = undefined

isDiagonal :: Matrix2x2 -> Bool
isDiagonal = undefined

isTriangular :: Matrix2x2 -> Bool
isTriangular = undefined

isLowerTriangular :: Matrix2x2 -> Bool
isLowerTriangular = undefined

isUpperTriangular :: Matrix2x2 -> Bool
isUpperTriangular = undefined

singular :: Matrix2x2 -> Bool
singular = undefined

invertible :: Matrix2x2 -> Bool
invertible = not . singular

inverse :: Matrix2x2 -> Matrix2x2
inverse = undefined


module Lista where

data ListInt = Empty | ListInt Int ListInt
    deriving ( Show, Eq )

hd :: ListInt -> Int
hd Empty = error "Solicitando head de lista vazia"
hd (ListInt x _) = x

tl :: ListInt -> ListInt
tl Empty = error "Solicitando tail de lista vazzia"
tl (ListInt _ ls) = ls

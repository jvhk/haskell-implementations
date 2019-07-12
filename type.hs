type Re = Double
type Im = Double

data Complex = C Re Im deriving (Show)

complex_add :: Complex -> Complex -> Complex
complex_add (C a b) (C c d) = C (a+c) (b+d)
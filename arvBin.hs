data ArvBin = Nulo | No Int ArvBin ArvBin

arv :: ArvBin

arv = (No 1 
          (No 2
              (No 4 Nulo Nulo) (No 5 Nulo Nulo))
          (No 3
              (No 6 Nulo Nulo) Nulo))


--Em ordem
em_ordem :: ArvBin -> [Int]
em_ordem Nulo = []
em_ordem (No n esq dir) = (em_ordem esq) ++ [n] ++ (em_ordem dir)
        
--Pós ordem
pos_ordem :: ArvBin -> [Int]
pos_ordem Nulo = []
pos_ordem (No n esq dir) = (pos_ordem esq) ++ (pos_ordem dir) ++ [n]



--------------------------------------------------------------------

--Pilha

push :: [Int] -> Int -> [Int]   --adiciona 
push p n = p ++ [n]


pop :: [Int] -> [Int] --remove
pop [] = error "Pilha vazia"
pop (x:xs) | (x == peek (x:xs)) = xs
           | otherwise = (x:pop xs)


is_empty  :: [Integer] -> Bool --esta vazia
is_empty [] = True
is_empty _ = False



peek :: [Int] -> Int --quase um get
peek [x] = x
peek (x:xs) = peek xs


push :: [Int] -> Int -> [Int]   --adiciona 
push p n = p ++ [n]


pop :: [Int] -> [Int] --remove
pop [] = error "Pilha vazia"
pop (x:xs) | (x == peek (x:xs)) = xs
           | otherwise = (x:pop xs)


is_empty  :: [Integer] -> Bool --esta vazia
is_empty [] = True
is_empty _ = False


pop_leandro :: [Int] -> [Int]
pop_leandro [] = error "Pilha vazia"
pop_leandro [x] = []
pop_leandro (x:xs) = [x] ++ pop_leandro xs


--peek :: [Int] -> Int
peek [x] = x
peek (x:xs) = peek xs


--Clear
clear :: [Int] -> [Int] --remove
clear [] = error "Pilha vazia"
clear (x:xs) | (x==clear (x:xs)) = xs
           | otherwise = clear xs
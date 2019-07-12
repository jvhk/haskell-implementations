--Ordena lista
maior :: [Int] -> Int
maior [x] = x
maior (cabeca:calda) | (cabeca > maior calda ) = cabeca
                     | otherwise = maior calda

remove_maior :: [Int] -> [Int]
remove_maior [] = []
remove_maior (x:xs) | (x == maior(x:xs)) = xs
                    | otherwise = x:remove_maior xs

ordena :: [Int] -> [Int]
ordena [] = []
ordena [x] = [x]
ordena (x:xs) = ordena (remove_maior (x:xs)) ++ [maior (x:xs)]
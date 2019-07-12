--Lista
lista :: [t]->Int
head(lista)
tail(lista)
lista(x::xs) = 1 + lista xs --acessando a lista



---------
--Lista (numero de elementos)
lista::[t]->Int
lista[]=0
lista(x:xs)= 1+lista xs

--Lista (soma dos elementos)
lista::[Int]->Int
lista[]=0
lista(x:xs)= x+lista xs

--Método para achar um valor especifico
existe :: [Int] -> Int -> Bool
existe [] n = False
existe (x:xs) n | (x == n) = True
                | otherwise = existe xs n



--Método para achar maior valor na lista
maior :: [Int] -> Int
maior [x] = x
maior (cabeca:calda) | (cabeca > maior cabeca:calda ) = cabeca
                     | otherwise = maior calda



--Compara duas listas,caso todos os elementos forem iguais,retorne verdadeiro (fiz sozinho)
compara :: [Int] -> [Int] -> Bool
compara [][] = True
compara []_= False
compara _[]= False
compara (x:xs) (z:zs) | (x==z) = compara xs zs
                      | otherwise = False


--Inverter lista [1,2,3] -> [3,2,1]
inv :: [Int] -> [Int]
inv [x] = [x]
inv (x:xs) = inv xs ++ [x]


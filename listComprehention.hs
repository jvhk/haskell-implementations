--List comprehention
x = [x | x <- [1,2,3]]
--Adicionando itens a lista de 1 a 10
z = [x+1 | x <- [1..10]]
---Outra coisa (Da direita pra esquerda)
y = [x*x | x <- [1,2,3], x > 5]
--Todos os que sao pares
a = [x | x <- [1..10],mod x 2 == 0]
--Com tuplas
x2 = [(x,y) | x <- [1..5],y<-[6..10]]

--Funcao pronta Sort
--import Data.List
--k = sort [8,5,2]

--Map
x3 = [5,8,10]

sq :: Int -> Int
sq x = x*x

--Fazer um filter para numeros primos "filter isPrimo [1..5]"
isPrimo :: Int -> Bool
isPrimo 1 = True
isPrimo 2 = False
isPrimo n | (length[x | x <- [2..n-1],mod n x == 0]) > 0 = False
          | otherwise = True
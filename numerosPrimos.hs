--Fazer um filter para numeros primos "filter isPrimo [1..5]"
isPrimo :: Int -> Bool
isPrimo 1 = True
isPrimo 2 = False
isPrimo n | (length[x | x <- [2..n-1],mod n x == 0]) > 0 = False
          | otherwise = True
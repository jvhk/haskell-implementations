--Funcao fatorial--
fatorial :: Int -> Int
fatorial 0 = 1
fatorial n = n * fatorial(n-1) 

--Fibonacci--
fibo :: Int -> Int
fibo 0 = 0
fibo 1 = 1
fibo 2 = 1
fibo n = fibo(n-1)+fibo(n-2)

--Guarda (tipo um if)--

guarda x | (x == 0) = 0
         | (x == 1) = 1
         | otherwise = -1  


--Variavel anonima "_"  --
my_and :: Bool -> Bool -> Bool
my_and False _ = False
my_and _ False = False
my_and True True = True


--If else--
letra :: Char -> String
letra l = 
         if l >= 'a' && l <= 'z' then "Minusculo"
         else if l >= 'A' && l <= 'Z' then "Maiusculo"
         else "Não é uma letra do alfabeto" 

--Letra 2--
letraDois :: Char -> String
letraDois b | (b>='a' && b<= 'z') = "Minusculo"
         | ((b>='A' && b<= 'Z')) = "Maiusculo"
         | otherwise = "Nao faz parte do alfabeto"  
         

--Trabalhando com tuplas--
ponto :: (Int,Int) -> (Int,Int) -> (Int,Int)
ponto (a,b) (c,d) = (a+c,b+d)


--Utilizando as variaveis anonimas para acessar os elementos da tupla --

nome :: (String,Int,String)
nome = ("joao",10,"x")

primeiro(x,_,_) = x
segundo(_,y,_) = y
terceiro(_,_,z) = z
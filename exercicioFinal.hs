-- VOLUME DA ESFERA(HASKELL) 
-- JOÃO VITOR DE OLIVEIRA CAMARA
-- No linux:
-- PARA COMPILAR O ARQUIVO: ghc -o exercicioFinal exercicioFinal.hs
-- PARA EXECUTAR ./exercicioFinal
main = do putStrLn "Digite o raio: "
          raio <- getLine
          let pi = 3.14159
          let volume = (4/3*pi) * ((read raio :: Double)**3)
          putStrLn ("VOLUME = " ++ (show volume))
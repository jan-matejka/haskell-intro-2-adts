main = putStrLn "What's your name?" >>= \_ -> getLine >>= \name -> putStrLn ("Hello " ++ name)

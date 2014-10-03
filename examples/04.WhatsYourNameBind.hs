ask               = putStrLn "What's your name?"
welcome name      = putStrLn ("Hello " ++ name)
_getLine  unused  = getLine

main = ask >>= _getLine >>= welcome

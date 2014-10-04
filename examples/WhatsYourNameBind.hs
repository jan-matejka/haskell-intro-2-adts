ask               = putStrLn "What's your name?"
_getLine  unused  = getLine
welcome   name    = putStrLn ("Hello " ++ name)

main = ask >>= _getLine >>= welcome

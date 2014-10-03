ask             = putStrLn "What's your name?"
welcome  name   = putStrLn ("Hello " ++ name)
_getLine unused = getLine

main = do
    ask
    name <- _getLine ()
    welcome name

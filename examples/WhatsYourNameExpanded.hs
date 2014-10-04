ask             = putStrLn "What's your name?"
_getLine unused = getLine
welcome  name   = putStrLn ("Hello " ++ name)

main = do
    ask
    name <- _getLine ()
    welcome name

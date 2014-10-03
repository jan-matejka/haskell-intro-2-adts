ask               = putStrLn "What's your name?"
welcome name      = putStrLn ("Hello " ++ name)
_getLine  unused  = getLine

main = ask >>= _getLine >>= welcome


-- (>>=) :: Monad m => m a -> (a -> m b) -> m b
-- lhs  >>=  rhs
-- execute lhs and pass it's result into rhs

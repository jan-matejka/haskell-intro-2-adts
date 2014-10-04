data Person = Person
            { name    :: String
            , surname :: String
            } deriving (Show)

main = putStrLn $ show $ Person "John" "Doe"

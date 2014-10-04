convert xs = map pred (map read xs) :: [Int]

main = putStrLn (show (convert ["2", "3"]))

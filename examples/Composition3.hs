convert xs =  map (pred . read) xs :: [Int]

main = putStrLn $ show $ convert ["2", "3"]

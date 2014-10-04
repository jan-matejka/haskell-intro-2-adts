convert :: [String] -> [Int]
convert =  map (pred . read)

main = putStrLn $ show $ convert ["2", "3"]

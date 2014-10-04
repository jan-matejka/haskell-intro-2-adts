data Color = Red | Blue

instance Show Color where
    show Red = "red"
    show Blue = "blue"

main = putStrLn $ show $ Red

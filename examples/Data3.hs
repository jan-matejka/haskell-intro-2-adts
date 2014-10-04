data Color = Red | Blue

instance Show Color where
    show Red = "Red"
    show Blue = "Blue"

main = putStrLn $ show $ Red

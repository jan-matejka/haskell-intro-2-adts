import Prelude hiding (FilePath)

type FilePath = String

write :: FilePath -> IO ()
write p = error "Not Implemented"

main = write "Foo"

import Data.Text

main :: IO ()
main = putStrLn $ unpack $ replace (pack "a") (pack "b") (pack "e")

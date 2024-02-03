import Flow

main :: IO ()
main = (repeat .> putStrLn) 'e'

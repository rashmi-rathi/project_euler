solution = show . sum $ map (\x -> x^x) [1..1000]

main = putStrLn $ drop (length solution - 10) solution

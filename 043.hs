import Data.List

readS x = read x :: Int

solutions :: [[Int]]
solutions = permutations "0123456789"

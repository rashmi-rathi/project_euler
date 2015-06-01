import Data.Array

-- 4179871
isqrt n = floor . sqrt . fromIntegral $ n

properFactors :: Int -> [Int]
properFactors 1 = [1]
properFactors n = 1 : (if i*i == n then init lfactors ++ rfactors else lfactors ++ rfactors)
    where
        lfactors = [x| x <- [2..isqrt n] , mod n x == 0]
        rfactors = map (div n) lfactors 
        i = isqrt n

{-
0 = deficient
1 = perfect 
2 = abundant
-}
dpa :: Int -> Int
dpa n
	| (temp) < n = 0
	| (temp) == n = 1
	| otherwise = 2
	where 
		temp = (sum $ properFactors n)

cl = array (1,28123) [(i , dpa i) | i <- [1..28123]] 

ans :: Int
ans = sum $ filter (not . sumOfAbundant) [1..28123]

sumOfAbundant :: Int -> Bool
sumOfAbundant n = if any (> 0) [ x |x <- [2..(n-2)] , cl ! x == 2 , cl ! (n-x) == 2] then True else False




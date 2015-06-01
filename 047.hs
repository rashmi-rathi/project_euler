import Data.List

primes :: [Integer]
primes = 2 : filter (l1 . primeFactors) [3,5..]
    where
        l1 (_:[]) = True
        l1      _ = False

primeFactors :: Integer -> [Integer]
primeFactors n = factor n primes
    where
        factor _ [] = []
        factor m (p:ps) | p*p > m        = [m]
                        | m `mod` p == 0 = p : factor (m `div` p) (p:ps)
                        | otherwise      = factor m ps

solution = filter  map (take 4) $ tails [2..] 
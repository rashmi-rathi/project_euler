import Data.List

isPrime :: Integer -> Bool
isPrime n = n > 1 &&
              foldr (\p r -> p*p > n || ((n `rem` p) /= 0 && r))
                True primes

primeFactors:: Integer -> [Integer] 
primeFactors n | n > 1 = go n primes   -- or go n (2:[3,5..])
   where                               -- for one-off invocation
     go n ps@(p:t)
        | p*p > n    = [n]
        | r == 0     =  p : go q ps
        | otherwise  =      go n t
                where
                  (q,r) = quotRem n p

primes :: [Integer]
primes = 2 : filter isPrime [3,5..]



truncs :: String -> [Integer]
truncs x = sort . nub $ map read ((init . tails $ x) ++ (tail . inits $ x))

--answer :: [Integer]
--answer = filter isPrime $ concatMap truncs tempList
--    where 
--    tempList = filter (not . fil) $ map show primes
--    fil x = any (`elem` x) "0468" || any (`elem` tail x) "25" || head x == '1' || last x == '1' || head x == '9' || last x == '9' 


list :: [String]
list = filter (not . fil) $ map show (dropWhile (<9) primes)
    where
        fil x = any (`elem` x) "0468" || any (`elem` tail x) "25" || head x == '1' || last x == '1' || head x == '9' || last x == '9' 

answer :: Integer
answer = sum $ take 11 [ read x | x <- list, all isPrime (truncs x)]


main :: IO()
main = print answer
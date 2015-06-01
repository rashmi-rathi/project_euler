import Data.List


isPandigital = (== "1234567") . sort . show


answer :: Int
answer = head $ filter isPrime $ filter isPandigital [9999999,9999997..1000000] 
-- sum [1..9] = 45, sum [1..8] = 36
-- so using divisiblity test any permutation of "123456789" is divisible by 9.
-- so using divisiblity test any permutation of "12345678" is divisible by 3.

main :: IO()
main = print answer

--sqrt of an integer
isqrt :: (Integral a) => a -> a
isqrt = ceiling . sqrt . fromIntegral

--Checks whether a number is a prime or not.
isPrime:: Integral a => a-> Bool
isPrime 2 = True
isPrime p
    | not (null [x | x <- 2 : [3, 5 .. isqrt p], mod p x == 0]) = False
    | otherwise = True
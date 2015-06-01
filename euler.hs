import Data.Char
import Data.List

--This function maps the digits to Ints
intToDigits n = sum $ map digitToInt (show n)

--sqrt of an integer
isqrt :: (Integral a) => a -> a
isqrt n = ceiling . sqrt . fromIntegral $ n

--Checks whether a number is a prime or not.
isPrime:: Integral a => a-> Bool
isPrime p
    | not (null [x | x <- 2 : [3, 5 .. isqrt p], mod p x == 0]) = False
    | otherwise = True


--Checks whether pandigital
isPandigital :: Integer -> Bool
isPandigital n =  (t == [1..9]) || False
	where
		int_to_digits = map digitToInt (show n)
		t = sort int_to_digits

-- Seperate digits i.e 123456 -> [1,2,3,4,5,6]
sepDigs :: Integer -> [Integer] 
sepDigs n 
	| n == 0 = []
	| n == 1 = [1]
	| otherwise =  sepDigs d ++ [r]
	where
		r =  n `mod` 10
		d = (n-r) `div` 10
		
-- Opposeite of sepDigs
joinDigs :: [Integer] -> Integer
joinDigs n = sum $ map (\(x,y) -> y*(10^x)) m
	where
		m = zip [0..length n - 1 ] (reverse n)

--------------------------------------------------------
cyclicRotations :: [a] -> [[a]]
cyclicRotations x = take (length x) (iterate f x)
	where
		f x = case x of 
		 			[] -> []
		 			(x:xs) -> xs ++ [x] 
----------------------------------------------------------
intToBinary n 
		| n==0 = [0] 
		| n > 0 = dropWhile (==0) (intToBinary q ++ [r])
		where
			q = div n 2
			r = mod n 2 

----------------------------------------------------------
--isPrime n = n > 1 &&
--              foldr (\p r -> p*p > n || ((n `rem` p) /= 0 && r))
--                True primes 
--primeFactors n | n > 1 = go n primes   -- or go n (2:[3,5..])
--   where                               -- for one-off invocation
--     go n ps@(p:t)
--        | p*p > n    = [n]
--        | r == 0     =  p : go q ps
--        | otherwise  =      go n t
--                where
--                  (q,r) = quotRem n p
--primes = 2 : filter isPrime [3,5..]
-------------------------------------------------
--it is very fast (10001's prime in 0.06 sec with Int and 0.2 with Integer on my machine)

--primes :: [Integer]
--primes = 2 : filter (l1 . primeFactors) [3,5..]
--    where
--        l1 (_:[]) = True
--        l1      _ = False

--primeFactors :: Integer -> [Integer]
--primeFactors n = factor n primes
--    where
--        factor _ [] = []
--        factor m (p:ps) | p*p > m        = [m]
--                        | m `mod` p == 0 = p : factor (m `div` p) (p:ps)
--                        | otherwise      = factor m ps
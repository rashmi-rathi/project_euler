--The prime factors of 13195 are 5, 7, 13 and 29.
--What is the largest prime factor of the number 600851475143 ?


---------------------------------------------------------------------------------------------------
-- My own version. Seems to be faster than other two versions for bigger numbers.

isqrt :: (Integral a, Integral b) => a -> b
isqrt n = ceiling . sqrt . fromIntegral $ n

isPrime:: Integral a => a-> Bool
isPrime 2 = True
isPrime p
    | length ([x | x<-2:[3,5..isqrt p] , mod p x == 0]) > 0 = False
    | otherwise = True

primeFactors :: Integral a => a -> [a]
primeFactors n = filter (/=0) $ concat [[if isPrime x == True then x else 0,if (isPrime (div n x) == True) then (div n x) else 0] | x <- 1:2:[3,5..isqrt n] , mod n x == 0]


--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
{-

-}
isPrime' n = n > 1 &&
              foldr (\p r -> p*p > n || ((n `rem` p) /= 0 && r))
                True primes'

primes' = 2 : filter  ((==1) . length . primeFactors') [3,5..]
primeFactors' n = factor n primes'
	where 
		factor n (p:xs)
			| p*p > n = [n]
			| n `mod` p == 0 = p : factor (n `div` p) (p:xs)
			| otherwise = factor n xs
problem_3 = last $ primeFactors' 600851475143

------------------------------------------------------------------------------------------------------------------------------------------------------------------

smallestFactor p = head [x | x <- 2:[3,5..isqrt p], mod p x == 0]
largestPrime p
    | isPrime p = p
    | (isPrime x) == True = x  
    | otherwise = y
    where
        x = div p (smallestFactor p)
        y = largestPrime x

main = putStrLn(show $ largestPrime (600851475143))


-- really slow, took 916.71 s to get the answer
isqrt :: (Integral a, Integral b) => a -> b
isqrt n = ceiling . sqrt . fromIntegral $ n

isPrime:: Integral a => a-> Bool
isPrime p
	| p == 2 = True
    | length ([x | x<-2:[3,5..isqrt p] , mod p x == 0]) > 0 = False
    | otherwise = True

ans_1 = sum $ takeWhile ( < 2000000) [ x | x <- 2:[3,5..] , isPrime x] 

-------------------------------------------------------------
primes' :: [Int]
primes' = 2 : filter  ((==1) . length . primeFactors') [3,5..]
primeFactors' n = factor n primes'
	where 
		factor n (p:xs)
			| p*p > n = [n]
			| n `mod` p == 0 = p : factor (n `div` p) (p:xs)
			| otherwise = factor n xs

ans_2 = sum $ takeWhile (< 2000000) primes'

------------------------------------------------------------------------


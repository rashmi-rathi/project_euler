isqrt :: (Integral a, Integral b) => a -> b
isqrt n = ceiling . sqrt . fromIntegral $ n

isPrime :: Integer -> Bool
isPrime p
	| p == 2 = True
 	| otherwise =	if [x | x<-2:[3,5..isqrt p] , mod p x == 0] /= [] then False else True


{-
prime :: Integer -> Bool
prime 2 = True
prime p = if (mod p 2 == 0) then False else  (oddFac p 3)
	where
		oddFac p r
			| r > t  = True
			| otherwise = if (p `mod` r == 0)  then False else oddFac p (r+2)
		t = isqrt p

Note : This function is faster when the number is actually prime.
isPrime:: Integral a => a-> Bool
isPrime 2 = True
isPrime p
    | length ([x | x<-2:[3,5..isqrt p] , mod p x == 0]) > 0 = False
    | otherwise = True
 -}

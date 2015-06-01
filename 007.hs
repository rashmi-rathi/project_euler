--By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.
--What is the 10 001st prime number?


isqrt n = ceiling . sqrt . fromIntegral $ n

isPrime:: Integral a => a-> Bool
isPrime p
    | p == 2 = True
    | length ([x | x<-[3,5..isqrt p] , mod p x == 0]) > 0 = False
    | otherwise = True

primes = y
    where y = [ x | x <- 2:[3,5..] , isPrime x]

ans = (primes !! 10000)
main = putStrLn(show ans)


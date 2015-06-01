-- There exists exactly one Pythagorean triplet for which a + b + c = 1000.
-- Find the product abc.
 

isqrt n = ceiling . sqrt . fromIntegral $ n 

pyth = [ (a,b,c) | c <- [0..500] ,let ab = 500000 - 1000*c, (a,b) <- (factor ab) ,a^2 + b^2 == c^2]

factor n = [(a, div n a) | a <-[1..isqrt n] , mod n a == 0]


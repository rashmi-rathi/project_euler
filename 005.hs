{-
2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20
-}


answer = foldl1 lcm [1..20]

commonFactors = head [ x | x <-[21..], mod x 16 == 0 , mod x 3 == 0 , mod x 5 == 0, mod x 7 == 0 , mod x 9 == 0 , mod x 11 == 0 , mod x 13 == 0 , mod x 17 ==0, mod x 19 == 0] 

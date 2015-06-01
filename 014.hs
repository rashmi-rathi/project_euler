--n → n/2 (n is even)
--n → 3n + 1 (n is odd)
import Data.Array
import Data.List
import Data.Ord (comparing)

--------------------------------------------------------------------------------------------------
-- This is really slow.

cols' 1 = [1]
cols' n =  if even n then (n : cols' (div n 2)) else (n : cols' (3*n +1))

answer' = maximum [(len x, x) | x<-[1..10^6]]
        where
            len x = length (cols' x)

------------------------------------------------------------------------------------------------------
collatz n = 
    a 
    where
    a = listArray (1,n) $ 0:[1 + cols x n | x <- [2..n]]
        where 
        cols x n = if x' <= n then a ! x' else 1 + cols x' n
            where
            x' = if even x then div x 2 else 3*x +1

answer = maximumBy (comparing snd) vector 
		where 
		vector = assocs $ collatz 1000000

main = print answer

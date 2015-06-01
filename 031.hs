import Data.List
import qualified Data.Set as Set
import Data.Array

coins = [1,2,5,10,20,50,100,200]

--perms :: Int -> [[Int]]
perms n
	| n <= 0 = empty_set
	| n == 1 = Set.fromList [[1]]
	| otherwise = Set.fromList [ sort $ x : y | x <- filter (<= n) coins , let temp = if (n-x) <= 0 then Set.toList empty_set else Set.toList (perm ! (n-x)) ,y <- temp]
	where
		empty_set = Set.fromList [[]]
answer = Set.size $ perm ! 200

perm = listArray (1,200) $ [perms x | x <- [1..200]]

---------------------------------------------------------------------------------------------------------------------------------------------
--Really Naive Solution

ans = let 
		func x1 x2 x3 x4 x5 x6 x7 = if (x1 + 2*x2 + 5*x3 + 10*x4 + 20*x5 + 50*x6 + 100*x7) == 200 then 1::Int else 0::Int
	  in
		
	1 + sum [(func x1 x2 x3 x4 x5 x6 x7) | 
			x1 <- [0..200],
			x2 <- [0..100],
			x3 <- [0..40],
			x4 <- [0..20],
			x5 <- [0..10],
			x6 <- [0..4],
			x7 <- [0..2]
		]
		
main = print answer
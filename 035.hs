import Data.List
import qualified Data.Set as Set

isPrime:: Integral a => a-> Bool
isPrime p
    | not (null [x | x <- 2 : [3, 5 .. isqrt], mod p x == 0]) = False
    | otherwise = True
    where isqrt = ceiling . sqrt . fromIntegral $ p


listOfNum :: [String]
listOfNum = filter (not . fil) [show i | i <- [11,13..10^6]]
	where		
	fil :: String -> Bool
	fil x = any (`elem` x) "024568"

cyclicRotations :: String -> [Integer]
cyclicRotations x = map (\x -> read x :: Integer) tempSet
 	where
		tempSet = take (length x) (iterate f x) -- These are the actual rotations, mapping them to Integer for later use
		f :: [a] -> [a]
		f x = case x of 
		 			[] -> []
		 			(x:xs) -> xs ++ [x] 


list :: [[Integer]]
list = map cyclicRotations listOfNum

answer :: Set.Set Integer
answer = Set.fromList $ 2:3:5:7:(concat $ filter (all isPrime) list)


main :: IO()
main = print (Set.size answer)
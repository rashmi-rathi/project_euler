
import Data.List
import Data.Array


isqrt :: Int -> Int
isqrt n = floor . sqrt . fromIntegral $ n

properFactors :: Int -> [Int]
properFactors 1 = [1]
properFactors n = 1 : (if i*i == n then init lfactors ++ reverse rfactors else lfactors ++ reverse rfactors )
    where
        lfactors = [x| x <- [2..isqrt n] , mod n x == 0]
        rfactors = map (div n) lfactors 
        i = isqrt n

answer :: Int
answer = sum [ a+b | a <- [2..9999], let b = divisorsSum ! a, amicable a b ]
	where
		amicable :: Int -> Int -> Bool
		amicable a b = (a < b) && (b < 10000) && (a == divisorsSum ! b)
		divisorsSum = array (1,9999) [(i,sum $ properFactors i) | i <- [1..9999]]

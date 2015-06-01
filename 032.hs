import Data.Char
import Data.List
import Data.Function

isPandigital :: String -> Bool
isPandigital n =  (sort n == ['1'..'9']) || False

isqrt :: Int -> Int
isqrt n = ceiling . sqrt . fromIntegral $ n

unusualNum :: [(Integer, String)]
unusualNum = nubBy ( (==) `on` fst) $ filter (\(_,y) -> isPandigital y) $
                       ([ (p,show1 a b p) | a <-[10..99], b <- [100..999],let p = a*b]	 --Maybe solution can be sped up by replacing 999 by (div 10000 a)
                    ++ 	[ (p,show1 a b p) | a <-[1..9], b <- [1000..9999],let p = a*b])
            where
                show1 a b c = show a ++ show b ++ show c
answer :: Integer
answer = sum $ map fst unusualNum

main :: IO()
main = print answer
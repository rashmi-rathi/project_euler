--Slow, make it faster?

import Data.List
import Data.Function

first (x,_,_,_) = x

solution = maximumBy (compare `on` snd) $ map (\t -> (first . head $ t, length t)) $ groupBy compareFirst [ (x,a,b,c) | x <-[1..1000] , a <- [1..x] , b <- [1..x] , let c = x - a - b, a^2 + b^2 == c^2]
	where 
		compareFirst x y = (first x) == (first y)

main :: IO()
main = print solution                                                                                                                    
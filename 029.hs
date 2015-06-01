import Data.List
import Data.Set

answer = length $ nub [ a^b | a <- [2..100] , b <- [2..100]]

ans = size $ fromList [ a^b | a <- [2..100] , b <- [2..100]] --- Using sets, very fast

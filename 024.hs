import Data.List
perm :: Eq t => [t] -> [[t]]
perm xs =  case xs of
				(x:[]) -> [[x]]
				otherwise -> [a : b | a <- xs , let temp = perm $ delete a xs, b <- temp]


answer = (perm [0,1,2,3,4,5,6,7,8,9]) !! (10^6 - 1) 


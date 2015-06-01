--What is the largest 1 to 9 pandigital 9-digit number that can be formed as the concatenated product of an integer with (1,2, ... , n ) where n > 1?

import Data.List 

 
isPandigital :: String -> Bool
isPandigital = (== "123456789") . sort


--This doesn't check numbers from 1 to 10 as they were checked manually
solution :: String
solution = maximum $ filter isPandigital $ filter (\x -> length x == 9) $ concatMap possibleNums [11..99999]
	where 
		--possibleNums maps x to x * (1,2,3,4,5) 				
		possibleNums :: Int -> [String]		
		possibleNums x = map (joinStr . map (\y -> show $ x*y)) [[1,2],[1,2,3],[1,2,3,4],[1,2,3,4,5]]
		
		joinStr :: [String] -> String
		joinStr = foldr1 (++)

main :: IO()
main = print solution
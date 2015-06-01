import Data.Char

x = sum $ map digitToInt x'
	where x' = show $ 2^1000

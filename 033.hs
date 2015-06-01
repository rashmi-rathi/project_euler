import Data.Ratio

solution :: Ratio Integer
solution = product $ filter (/= 1 % 1) [ isCurious a b c | a <- [1..9] , b <- [1..9] , c <- [1..9]]

isCurious :: Integral a => a -> a -> a -> Ratio a
isCurious a b c 
	|(10*a + b)%(10*a + c) == b%c = b%c
	|(10*a + b)%(10*b + c) == a%c = a%c
	| otherwise = 1 % 1

main :: IO()
main = print $ solution

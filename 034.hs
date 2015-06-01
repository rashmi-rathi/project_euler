import Data.Array
import Data.Char


facs = listArray (0,9) [factorial i | i <- [0..9]]
	where
		factorial n
			| n==0 = 1
			| n > 0 = product[n,facs ! (n-1)]

digit_factorial_sum n = sum $ map (\a ->  facs ! (digitToInt a)) (show n)
answer = filter(\a -> digit_factorial_sum a == a)  [ i | i <- [10..(upperBound)]]
		where upperBound = 7*(facs ! 9)
main = print . sum $ answer

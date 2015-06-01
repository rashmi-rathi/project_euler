import Data.Char

problem30 :: Int -> [Integer]
problem30 m = filter (\x -> x == func x) [t..(t*(9^t))]
	where
		t = fromIntegral m
		func :: Show a0 => a0 -> Integer
		func n = fromIntegral $ sum $ map (\a -> (digitToInt a)^5) (show n)

answer = sum(problem30 5)
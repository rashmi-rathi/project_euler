diagonals 0 = [1]
diagonals n = let 
				t = last $ diagonals (n-1)
			  in
			  	map (\x -> t + 2*n*x) [1..4]

answer = sum $ concatMap diagonals [0..floor (1001/2)]

main :: IO ()
main = print answer

--answer = sum $ map (sum . diagonals) [0..floor (1001/2)]

euler28 n = sum $ scanl (+) 0
            (1:(concatMap (replicate 4) [2,4..(n-1)]))


import Data.List 

-- Length of the repeating decimal cycle of 1/n.
-- e.g. 1/4 = 0.25(0), which is length 1.
-- e.g. 1/7 = 0.(142857), which is length 6.
remainders :: Int -> Int -> [Int] -> Int
remainders d r rs = let 
						r' = r `mod` d
					in
						case elemIndex r' rs of
											Nothing -> remainders d (10*r') (r':rs) 
											Just i -> i+1											
answer = let 
			tempList = (map (\r -> remainders r 1 []) [1..999])
		in
			tempList !! (maximum tempList) + 1
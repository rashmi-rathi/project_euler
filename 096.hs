import Data.List
puzzle = 
	[[0,0,3,0,2,0,6,0,0],
	 [9,0,0,3,0,5,0,0,1],
	 [0,0,1,8,0,6,4,0,0],
	 [0,0,8,1,0,2,9,0,0],
	 [7,0,0,0,0,0,0,0,8],
	 [0,0,6,7,0,8,2,0,0],
	 [0,0,2,6,0,9,5,0,0],
	 [8,0,0,2,0,3,0,0,9],
	 [0,0,5,0,1,0,3,0,0]]

cell i j = filter (\x -> x /= 0) $ concatMap ((take 3) . (drop j') . (puzzle !!)) [i',i'+1,i'+2]
	where 
		i' = i - (i `mod` 3)
		j' = j - (j `mod` 3)
cell' n = let
			(i,j) = (n - n `mod` 3, (n-1)*3 `mod` 3)
			in 
				(cell i j)
			--This gives cell 0,1,2..9
			--To get cell 0 , n = 0,1,2
			--To get cell 1 , n = 3,4,5
row n = filter (\x -> x /= 0) (puzzle !! n)
column n = filter (\x -> x /= 0) [ (puzzle !! i) !!  n | i <- [0..8]]

solutionsAt n
	| x > 0 = [x]
	| x == 0 = [1..9] \\ ((row i) ++ (column i) ++ (cell i j))
		where
			x  = (puzzle !! i) !! j
			i = div n 9
			j = mod n 9


p :: [(Int,Integer)]
p = zip [0..] (concat puzzle) 

zero = fst . head $ filter (\(_,y) -> y == 0) p 

replaceAt xs n y = (take n xs) ++ [y] ++ tail (drop n xs) 

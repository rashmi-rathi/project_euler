solution = let n = 10^12
			in
		[ b | x <-[n,n+1..] -- filter (\y -> y `mod` 4 == 2) 
			,let c = (2*x*(x-1) + 1)
			,let b = floor $ (0.5 + (sqrt . fromIntegral $ c)*0.5)
			,2*b*(b-1)==x*(x-1) ]																
ans = head $ solution

main = print ans
--756872327473
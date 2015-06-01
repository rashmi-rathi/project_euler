intToBinary n 
	| n==0 = [0] 
	| n > 0 = dropWhile (==0) (intToBinary q ++ [r])
	where
		q = div n 2
		r = mod n 2 

isPalindrome n 
	| n == reverse n = True
	| otherwise = False


first  (x,_,_) = x
second (_,y,_) = y
third (_,_,z) = z

--List of numbers which are both palindrome in binary and 10-base.
list = filter (\x -> second x && third x) 
		$ map (\x -> (x,isPalindrome . show $ x,isPalindrome . intToBinary $ x)) [1..10^6]
answer = sum $ map first list

main = print answer